class amanda (
   Optional[String] $config_dir, 
   Optional[String] $backup_dir, 
   Optional[Integer[0, 65535] $uid, 
   Optional[Integer[0, 65535] $user, 
   Optional[String] $comment, 
   Optional[String] $shell,
   Optional[String] $group,
   Array[String] $groups,
   Optional[String] $server_package,
   Optional[String] $client_package,
   Boolean $server_provides_client,
   Optional[String] $amandad_path,
   Optional[String] $amandaidx_path,
   Optional[String] $amandataped_path,
   Array[String] $amanda_directories,
) {
    if $facts[''] {
        
    } else {

  }
