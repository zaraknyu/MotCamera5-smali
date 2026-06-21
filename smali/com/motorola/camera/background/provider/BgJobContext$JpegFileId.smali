.class public final Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public category:Ljava/lang/String;

.field public fid:J

.field public mime:Ljava/lang/String;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;

    iget-object v1, p0, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->category:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->category:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->mime:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->mime:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->fid:J

    iget-wide p0, p1, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->fid:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->category:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->mime:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-wide v1, p0, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->fid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->category:Ljava/lang/String;

    iget-object v1, p0, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->mime:Ljava/lang/String;

    iget-wide v2, p0, Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;->fid:J

    const-string p0, ", mime="

    const-string v4, ", fid="

    const-string v5, "JpegFileId(category="

    invoke-static {v5, v0, p0, v1, v4}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
