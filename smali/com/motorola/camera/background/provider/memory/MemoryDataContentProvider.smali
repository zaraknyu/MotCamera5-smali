.class public final Lcom/motorola/camera/background/provider/memory/MemoryDataContentProvider;
.super Lcom/motorola/camera/background/provider/memory/InMemoryContentProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/background/provider/memory/InMemoryContentProvider;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/motorola/camera/background/provider/memory/MemoryDataContentProvider;",
        "Lcom/motorola/camera/background/provider/memory/InMemoryContentProvider;",
        "Lcom/motorola/camera/background/provider/filedatacontract/FileData;",
        "<init>",
        "()V",
        "MotCamera-Background_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/background/provider/memory/InMemoryContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final columnNames()[Ljava/lang/String;
    .locals 14

    const-string v12, "height"

    const-string/jumbo v13, "stride"

    const-string/jumbo v0, "tag"

    const-string v1, "file_name"

    const-string/jumbo v2, "uri"

    const-string/jumbo v3, "ts"

    const-string v4, "MIME_type"

    const-string v5, "format"

    const-string/jumbo v6, "time_out"

    const-string v7, "compression_type"

    const-string v8, "encryption_type"

    const-string v9, "mSize"

    const-string/jumbo v10, "ref_count"

    const-string/jumbo v11, "width"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final dataFromValues(Landroid/content/ContentValues;)Ljava/lang/Object;
    .locals 0

    sget p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->$r8$clinit:I

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzim;->fromContentValues(Landroid/content/ContentValues;)Lcom/motorola/camera/background/provider/filedatacontract/FileData;

    move-result-object p0

    return-object p0
.end method

.method public final dataToColumns(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 14

    check-cast p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;

    iget-object v0, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->tag:Ljava/lang/Long;

    iget-object v1, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->fileName:Ljava/lang/String;

    iget-object v2, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->uri:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->ts:Ljava/lang/Long;

    iget-object v4, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->MIMEType:Ljava/lang/String;

    iget-object v5, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->format:Ljava/lang/String;

    iget-object v6, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->expirationTime:Ljava/lang/Long;

    iget-object v7, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->compressionType:Ljava/lang/String;

    iget-object v8, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->encryptionType:Ljava/lang/String;

    iget-object v9, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mSize:Ljava/lang/Integer;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object p0, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->dims:Lcom/motorola/camera/background/provider/filedatacontract/DimProp;

    iget-object v11, p0, Lcom/motorola/camera/background/provider/filedatacontract/DimProp;->width:Ljava/lang/Integer;

    iget-object v12, p0, Lcom/motorola/camera/background/provider/filedatacontract/DimProp;->height:Ljava/lang/Integer;

    iget-object v13, p0, Lcom/motorola/camera/background/provider/filedatacontract/DimProp;->stride:Ljava/lang/Integer;

    filled-new-array/range {v0 .. v13}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final deleteData(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;

    return-void
.end method

.method public final getAuthority()Ljava/lang/String;
    .locals 0

    const-string p0, "com.motorola.camera5.background.provider.MemoryDataContentProvider"

    return-object p0
.end method

.method public final getEndpoint()Ljava/lang/String;
    .locals 0

    const-string p0, "fileData_table"

    return-object p0
.end method
