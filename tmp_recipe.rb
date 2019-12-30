execute "rm -rf tmp && mkdir -p tmp/link && touch tmp/link/src"
link "tmp/link/dst" do
  to "tmp/link/src"
end

execute "touch tmp/link/force-dst"
link "tmp/link/force-dst" do
  to "tmp/link/src"
  force true
end

execute "mkdir tmp/link/force-no-dereference-src"
link "force-no-dereference-dst" do
  cwd "tmp/link"
  to "force-no-dereference-src"
  force true
end

#execute "mkdir /tmp/link-force-no-dereference2"
#link "link-force-no-dereference" do
#  cwd "/tmp"
#  to "link-force-no-dereference2"
#  force true
#end


#git "/tmp/git_repo" do
#  repository "_https://github.com/ryotarai/infrataster.git__"
#  revision "v0.1.0"
#end
#
#git "/tmp/git_repo_submodule" do
#  repository "_https://github.com/mmasaki/fake_repo_including_submodule.git__"
#  recursive true
#end
#
#git "/tmp/fake_depth_repo" do
#  repository "_https://github.com/itamae-kitchen/itamae-kitchen.github.io.git__"
#  depth 1
#end
