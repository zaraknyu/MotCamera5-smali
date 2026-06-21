.class public final Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public instanceId:J

.field public instanceTag:J

.field public jpegFids:Ljava/util/ArrayList;

.field public slot:J


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;

    iget-wide v3, p0, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->slot:J

    iget-wide v5, p1, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->slot:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->instanceId:J

    iget-wide v5, p1, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->instanceId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->instanceTag:J

    iget-wide v5, p1, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->instanceTag:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->jpegFids:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->jpegFids:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->slot:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->instanceId:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v2, p0, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->instanceTag:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-object p0, p0, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->jpegFids:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget-wide v0, p0, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->slot:J

    iget-wide v2, p0, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->instanceId:J

    iget-wide v4, p0, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->instanceTag:J

    iget-object p0, p0, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->jpegFids:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "JpegContext(slot="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", instanceId="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", instanceTag="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", jpegFids="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
