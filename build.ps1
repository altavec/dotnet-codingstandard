$version = '777.77.7'

dotnet build .\tasks\Altavec.DotNet.CodingStandard.Tasks --configuration Release -property:Version=$version

$sha = (git rev-parse HEAD)
$ref_name = (git symbolic-ref --short HEAD)
$repositoryUrl = (git remote get-url origin)
nuget pack Altavec.DotNet.CodingStandard.nuspec -ForceEnglishOutput -Version $version -Properties "RepositoryCommit=$sha;RepositoryBranch=$ref_name;RepositoryUrl=$repositoryUrl;NoWarn=NU5100"