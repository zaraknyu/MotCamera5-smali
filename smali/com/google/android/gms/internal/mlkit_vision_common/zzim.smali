.class public abstract Lcom/google/android/gms/internal/mlkit_vision_common/zzim;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static fromContentValues(Landroid/content/ContentValues;)Lcom/motorola/camera/background/provider/filedatacontract/FileData;
    .locals 7

    new-instance v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/motorola/camera/background/provider/filedatacontract/DimProp;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v4, v5, Lcom/motorola/camera/background/provider/filedatacontract/DimProp;->width:Ljava/lang/Integer;

    iput-object v4, v5, Lcom/motorola/camera/background/provider/filedatacontract/DimProp;->height:Ljava/lang/Integer;

    iput-object v4, v5, Lcom/motorola/camera/background/provider/filedatacontract/DimProp;->stride:Ljava/lang/Integer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-wide v1, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->id:J

    iput-object v3, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->tag:Ljava/lang/Long;

    const-string v6, ""

    iput-object v6, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->fileName:Ljava/lang/String;

    iput-object v6, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->uri:Ljava/lang/String;

    iput-object v3, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->ts:Ljava/lang/Long;

    iput-object v6, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->MIMEType:Ljava/lang/String;

    iput-object v6, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->format:Ljava/lang/String;

    iput-object v3, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->expirationTime:Ljava/lang/Long;

    iput-object v6, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->compressionType:Ljava/lang/String;

    iput-object v6, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->encryptionType:Ljava/lang/String;

    iput-object v4, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mSize:Ljava/lang/Integer;

    iput-object v5, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->dims:Lcom/motorola/camera/background/provider/filedatacontract/DimProp;

    if-nez p0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v4, "id"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :cond_1
    iput-wide v1, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->id:J

    :cond_2
    const-string/jumbo v1, "tag"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move-object v3, v1

    :goto_0
    iput-object v3, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->tag:Ljava/lang/Long;

    :cond_4
    const-string v1, "file_name"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->fileName:Ljava/lang/String;

    :cond_5
    const-string/jumbo v1, "uri"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->uri:Ljava/lang/String;

    :cond_6
    const-string/jumbo v1, "ts"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->ts:Ljava/lang/Long;

    :cond_7
    const-string v1, "MIME_type"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->MIMEType:Ljava/lang/String;

    :cond_8
    const-string v1, "format"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->format:Ljava/lang/String;

    :cond_9
    const-string/jumbo v1, "time_out"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->expirationTime:Ljava/lang/Long;

    :cond_a
    const-string v1, "compression_type"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->compressionType:Ljava/lang/String;

    :cond_b
    const-string v1, "encryption_type"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->encryptionType:Ljava/lang/String;

    :cond_c
    const-string v1, "mSize"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mSize:Ljava/lang/Integer;

    :cond_d
    const-string/jumbo v1, "width"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v5, Lcom/motorola/camera/background/provider/filedatacontract/DimProp;->width:Ljava/lang/Integer;

    :cond_e
    const-string v1, "height"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v5, Lcom/motorola/camera/background/provider/filedatacontract/DimProp;->height:Ljava/lang/Integer;

    :cond_f
    const-string/jumbo v1, "stride"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v5, Lcom/motorola/camera/background/provider/filedatacontract/DimProp;->stride:Ljava/lang/Integer;

    :cond_10
    :goto_1
    return-object v0
.end method
