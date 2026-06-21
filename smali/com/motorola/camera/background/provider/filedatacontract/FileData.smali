.class public final Lcom/motorola/camera/background/provider/filedatacontract/FileData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final DEFAULT_TIMEOUT_MS:J


# instance fields
.field public MIMEType:Ljava/lang/String;

.field public compressionType:Ljava/lang/String;

.field public dims:Lcom/motorola/camera/background/provider/filedatacontract/DimProp;

.field public encryptionType:Ljava/lang/String;

.field public expirationTime:Ljava/lang/Long;

.field public fileName:Ljava/lang/String;

.field public format:Ljava/lang/String;

.field public id:J

.field public mSize:Ljava/lang/Integer;

.field public tag:Ljava/lang/Long;

.field public ts:Ljava/lang/Long;

.field public uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->DEFAULT_TIMEOUT_MS:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-ne p0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    instance-of v2, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    check-cast p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;

    iget-wide v2, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->id:J

    iget-wide v4, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->tag:Ljava/lang/Long;

    iget-object v3, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->tag:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->fileName:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->fileName:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->uri:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->uri:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->ts:Ljava/lang/Long;

    iget-object v3, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->ts:Ljava/lang/Long;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->MIMEType:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->MIMEType:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->format:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->format:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->expirationTime:Ljava/lang/Long;

    iget-object v3, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->expirationTime:Ljava/lang/Long;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_9
    invoke-virtual {v1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_0

    :cond_a
    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->compressionType:Ljava/lang/String;

    iget-object v2, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->compressionType:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_0

    :cond_b
    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->encryptionType:Ljava/lang/String;

    iget-object v2, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->encryptionType:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_0

    :cond_c
    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mSize:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mSize:Ljava/lang/Integer;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_0

    :cond_d
    iget-object p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->dims:Lcom/motorola/camera/background/provider/filedatacontract/DimProp;

    iget-object p1, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->dims:Lcom/motorola/camera/background/provider/filedatacontract/DimProp;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/provider/filedatacontract/DimProp;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    :goto_0
    return v0

    :cond_e
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->tag:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->fileName:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->uri:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->ts:Ljava/lang/Long;

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->MIMEType:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->format:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->expirationTime:Ljava/lang/Long;

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->compressionType:Ljava/lang/String;

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->encryptionType:Ljava/lang/String;

    if-nez v1, :cond_7

    move v1, v2

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mSize:Ljava/lang/Integer;

    if-nez v1, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->dims:Lcom/motorola/camera/background/provider/filedatacontract/DimProp;

    invoke-virtual {p0}, Lcom/motorola/camera/background/provider/filedatacontract/DimProp;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 15

    iget-wide v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->id:J

    iget-object v2, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->tag:Ljava/lang/Long;

    iget-object v3, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->fileName:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->uri:Ljava/lang/String;

    iget-object v5, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->ts:Ljava/lang/Long;

    iget-object v6, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->MIMEType:Ljava/lang/String;

    iget-object v7, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->format:Ljava/lang/String;

    iget-object v8, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->expirationTime:Ljava/lang/Long;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->compressionType:Ljava/lang/String;

    iget-object v11, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->encryptionType:Ljava/lang/String;

    iget-object v12, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mSize:Ljava/lang/Integer;

    iget-object p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->dims:Lcom/motorola/camera/background/provider/filedatacontract/DimProp;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "FileData(id="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", tag="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", fileName="

    const-string v1, ", uri="

    invoke-static {v13, v0, v3, v1, v4}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", ts="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", MIMEType="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", format="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", expirationTime="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", refCount="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", compressionType="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", encryptionType="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mSize="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", dims="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
