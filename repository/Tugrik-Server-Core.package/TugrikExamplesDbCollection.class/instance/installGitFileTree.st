examples
installGitFileTree
  ^ '  "Install GitFileTree and reload Tugrik -- Tugrik is a metadata-less repository"

	Metacello new 
		baseline: ''FileTree'';
		repository: ''filetree:///export/foos1/users/dhenrich/dev/_home/shared/repos/pharo5.0/filetree/repository'';
		onWarningLog;
		onConflictUseIncoming;
		lock;
		load: #(''Git'').

	Metacello new 
		baseline: ''Tugrik'';
		repository: ''gitfiletree:///export/foos1/users/dhenrich/dev/_home/shared/repos/Tugrik/repository'';
		onWarningLog;
		onConflictUseIncoming;
		lock;
		load.

	"Update the GsDevKit client image"
	(FileLocator imageDirectory / ''customClientLoad.st'') fileIn
'