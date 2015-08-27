$start_point = $args[0]

$types=@()
$pom =  Get-ChildItem($start_point) -R
echo $pom
foreach ($f in $pom) {
	$p = $f.Extension
	if ($types -contains $p) {
		}
	else {
		$types+=$p
		}
	}
echo $types
foreach ($sh in $types) {
	mkdir $sh
	}

foreach ($f in $pom) {
	$origin=$f.fullname
	$dest = './'+$f.Extension+'/'+$f.Name
	echo $dest
	cp $origin $dest
	}



