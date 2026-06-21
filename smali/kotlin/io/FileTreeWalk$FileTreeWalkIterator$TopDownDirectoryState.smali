.class public final Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;
.super Lkotlin/io/FileTreeWalk$DirectoryState;
.source "SourceFile"


# instance fields
.field public fileIndex:I

.field public fileList:[Ljava/io/File;

.field public rootVisited:Z


# virtual methods
.method public final step()Ljava/io/File;
    .locals 5

    iget-boolean v0, p0, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->rootVisited:Z

    iget-object v1, p0, Lkotlin/io/FileTreeWalk$WalkState;->root:Ljava/io/File;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->rootVisited:Z

    return-object v1

    :cond_0
    iget-object v0, p0, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->fileList:[Ljava/io/File;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v3, p0, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->fileIndex:I

    array-length v4, v0

    if-ge v3, v4, :cond_1

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    :goto_0
    if-nez v0, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->fileList:[Ljava/io/File;

    if-eqz v0, :cond_3

    array-length v0, v0

    if-nez v0, :cond_4

    :cond_3
    return-object v2

    :cond_4
    iget-object v0, p0, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->fileList:[Ljava/io/File;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, p0, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->fileIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->fileIndex:I

    aget-object p0, v0, v1

    return-object p0
.end method
