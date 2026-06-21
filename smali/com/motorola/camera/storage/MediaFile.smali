.class public interface abstract Lcom/motorola/camera/storage/MediaFile;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static fromMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;)Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;
    .locals 1

    const-string v0, "mediaFilePath"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    invoke-direct {v0, p0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;-><init>(Lcom/motorola/camera/storage/MediaFilePath;)V

    return-object v0
.end method


# virtual methods
.method public abstract asSharedMediaFile()Lcom/motorola/camera/storage/backend/MediaStoreFile;
.end method

.method public abstract asTemporaryFileMediaFile()Lcom/motorola/camera/storage/backend/TemporaryFileMediaFile;
.end method

.method public abstract delete()V
.end method

.method public abstract finish()V
.end method

.method public abstract getFileUri()Landroid/net/Uri;
.end method

.method public abstract getWriteFd()I
.end method

.method public abstract getWriteFileDescriptor()Ljava/io/FileDescriptor;
.end method

.method public abstract isFinished()Z
.end method

.method public abstract openReadParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract toMemento()Lcom/motorola/camera/storage/MediaFile$Memento;
.end method
