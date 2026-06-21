.class public abstract Lcom/motorola/camera/thumbnail/MediaUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getOverrideSize(IIII)Landroid/util/Size;
    .locals 4

    mul-int v0, p0, p1

    if-nez v0, :cond_0

    new-instance p2, Landroid/util/Size;

    invoke-direct {p2, p0, p1}, Landroid/util/Size;-><init>(II)V

    return-object p2

    :cond_0
    invoke-static {}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getMainDisplayRealSize()Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    const/16 v2, 0x438

    filled-new-array {p0, p1, v1, v2}, [I

    move-result-object v1

    invoke-static {v1}, Ljava/util/stream/IntStream;->of([I)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->min()Ljava/util/OptionalInt;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/2addr v2, v1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/2addr v2, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le v2, v0, :cond_1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int/2addr v1, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/2addr v1, v2

    move v2, v0

    :cond_1
    const/16 v0, 0x5a

    if-ge p0, p1, :cond_2

    if-eq p2, v0, :cond_3

    const/16 v3, 0x10e

    if-eq p2, v3, :cond_3

    :cond_2
    if-le p0, p1, :cond_4

    if-eqz p2, :cond_3

    const/16 v3, 0xb4

    if-ne p2, v3, :cond_4

    :cond_3
    new-instance p2, Landroid/util/Size;

    invoke-direct {p2, v2, v1}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    :cond_4
    new-instance p2, Landroid/util/Size;

    invoke-direct {p2, v1, v2}, Landroid/util/Size;-><init>(II)V

    :goto_0
    const/4 v3, 0x1

    if-ne p3, v3, :cond_6

    new-instance p2, Landroid/util/Size;

    invoke-direct {p2, v1, v2}, Landroid/util/Size;-><init>(II)V

    if-le p0, p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    invoke-static {p2, v0}, Lcom/motorola/camera/utility/ColorUtil;->convertSize(Landroid/util/Size;I)Landroid/util/Size;

    move-result-object p0

    return-object p0

    :cond_6
    return-object p2
.end method

.method public static isMediaStoreVideoUri(Landroid/net/Uri;)Z
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "media"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    const-string/jumbo v0, "video"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
