.class public final Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public algoAuxDataFids:Ljava/util/ArrayList;

.field public app6Fid:J

.field public auxliaryDataFid:J

.field public exifFid:J

.field public jpegFids:Ljava/util/ArrayList;

.field public makerNoteFid:J

.field public thumbFid:J


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;

    iget-wide v3, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->thumbFid:J

    iget-wide v5, p1, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->thumbFid:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->exifFid:J

    iget-wide v5, p1, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->exifFid:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->makerNoteFid:J

    iget-wide v5, p1, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->makerNoteFid:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->app6Fid:J

    iget-wide v5, p1, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->app6Fid:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->auxliaryDataFid:J

    iget-wide v5, p1, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->auxliaryDataFid:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->algoAuxDataFids:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->algoAuxDataFids:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->jpegFids:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->jpegFids:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->thumbFid:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->exifFid:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v2, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->makerNoteFid:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v2, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->app6Fid:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v2, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->auxliaryDataFid:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-object v2, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->algoAuxDataFids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->jpegFids:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 13

    iget-wide v0, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->thumbFid:J

    iget-wide v2, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->exifFid:J

    iget-wide v4, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->makerNoteFid:J

    iget-wide v6, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->app6Fid:J

    iget-wide v8, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->auxliaryDataFid:J

    iget-object v10, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->algoAuxDataFids:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/motorola/camera/background/provider/BgJobContext$AlgContext;->jpegFids:Ljava/util/ArrayList;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "AlgContext(thumbFid="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", exifFid="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", makerNoteFid="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", app6Fid="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", auxliaryDataFid="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", algoAuxDataFids="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", jpegFids="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
