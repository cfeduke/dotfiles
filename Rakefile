namespace :install do
  @path = File.dirname(File.expand_path(__FILE__))

  def install_config_file(force, *args)
    config_path = File.join(@path, args)
    dest_path = File.join(File.expand_path("~"), args.last)
    
    if force
      FileUtils.rm dest_path
    end
    
    if File.symlink? dest_path
      puts "Symlink for #{args.last} already exists"
    elsif File.exist? dest_path
      puts "#{config_path} already exists as an actual file"
    else
      File.symlink config_path, dest_path
      puts "Created symlink for #{config_path}"
    end
  end

  namespace :git do
    desc "installs git configuration"
    task :all => ["install:git:gitconfig", "install:git:gitignore"]
    
    desc "git configuration (aliases)"
    task :gitconfig, :force do |t, args|
      install_config_file args[:force], 'git', '.gitconfig'
    end
    
    desc "installs global git ignore"
    task :task_name, :force do |t, args|
      install_config_file args[:force], 'git', '.gitignore_global'
    end
  end
  
  desc "installs TextMate symlinks"
  task :mate do
    if !File.exist? "/Applications/TextMate.app"
      puts "TextMate not installed at /Applications/TextMate.app, unable to continue"
    else
      dest_mate = File.expand("~") + '/bin/mate'
      File.symlink "/Applications/TextMate.app/Contents/Resources/mate", dest_mate unless File.exist? dest_mate
      # having a binary name of "mate_wait" allows mate to be used as the $EDITOR variable
      dest_mate_wait = File.expand("~") + "/bin/mate_wate"
      File.symlink dest_mate, dest_mate_wait unless File.exist? dest_mate_wait
    end
  end
  
  desc "installs bash configuration"
  task :bash, :force do |t, args|
    install_config_file args[:force], '.bashrc'
  end
  
  desc "interactive ruby (irb) config"
  task :irbconfig, :force do |t, args|
    install_config_file args[:force], 'ruby', '.irbrc'
  end
  
  desc "finder changes"
  task :finder do |t|
    sh "defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES"
    puts 'ctrl+cmd+click Finder and Relaunch'
  end
end