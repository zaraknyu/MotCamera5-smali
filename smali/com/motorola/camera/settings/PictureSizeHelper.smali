.class public abstract Lcom/motorola/camera/settings/PictureSizeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getHalfPictureSize(Ljava/util/ArrayList;Landroid/util/Size;Lcom/motorola/camera/PreviewSize$AspectRatio;)Landroid/util/Size;
    .locals 3

    invoke-static {p1}, Lcom/motorola/camera/utility/ColorUtil;->isSizeValid(Landroid/util/Size;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/motorola/camera/utility/ColorUtil;->getArea(Landroid/util/Size;)I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    invoke-static {p0, p2, v0, v1}, Lcom/motorola/camera/settings/PictureSizeHelper;->getPictureSize(Ljava/util/ArrayList;Lcom/motorola/camera/PreviewSize$AspectRatio;II)Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/utility/ColorUtil;->isSizeValid(Landroid/util/Size;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    invoke-static {p1}, Lcom/motorola/camera/utility/ColorUtil;->getArea(Landroid/util/Size;)I

    move-result v0

    div-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-static {p0, p2, v0, v1}, Lcom/motorola/camera/settings/PictureSizeHelper;->getPictureSize(Ljava/util/ArrayList;Lcom/motorola/camera/PreviewSize$AspectRatio;II)Landroid/util/Size;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/utility/ColorUtil;->isSizeValid(Landroid/util/Size;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1, p0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPictureSize(Ljava/util/ArrayList;Lcom/motorola/camera/PreviewSize$AspectRatio;II)Landroid/util/Size;
    .locals 6

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const v1, 0x7fffffff

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    const/4 v4, 0x2

    if-ne v4, p3, :cond_2

    .line 2
    invoke-static {v3}, Lcom/motorola/camera/utility/ColorUtil;->getArea(Landroid/util/Size;)I

    move-result v4

    if-gt p2, v4, :cond_1

    .line 3
    invoke-static {v3}, Lcom/motorola/camera/utility/ColorUtil;->getArea(Landroid/util/Size;)I

    move-result v4

    sub-int/2addr v4, p2

    goto :goto_1

    :cond_1
    move v4, v1

    goto :goto_1

    .line 4
    :cond_2
    invoke-static {v3}, Lcom/motorola/camera/utility/ColorUtil;->getArea(Landroid/util/Size;)I

    move-result v4

    sub-int v4, p2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 5
    :goto_1
    new-instance v5, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v5, v3}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    invoke-static {v5, p1}, Lcom/motorola/camera/PreviewSize;->isTrueAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-ge v4, v2, :cond_0

    move-object v0, v3

    move v2, v4

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    .line 6
    new-instance p0, Landroid/util/Size;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_4
    return-object v0
.end method

.method public static getPictureSize(Ljava/util/List;ILcom/motorola/camera/PreviewSize$AspectRatio;)Landroid/util/Size;
    .locals 2

    .line 7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 8
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-ne p1, v1, :cond_0

    new-instance v1, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v1, v0}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    .line 9
    invoke-static {v1, p2}, Lcom/motorola/camera/PreviewSize;->isTrueAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getRatioText(Lcom/motorola/camera/PreviewSize;)Ljava/lang/String;
    .locals 8

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/PreviewSize$AspectRatioType;->FULL:Lcom/motorola/camera/PreviewSize$AspectRatioType;

    invoke-static {v1}, Lcom/motorola/camera/PreviewSize;->getPreviewSizesForAspect(Lcom/motorola/camera/PreviewSize$AspectRatioType;)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v2

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/PreviewSize$AspectRatio;

    iget-object v3, v3, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v3}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v3

    invoke-static {v2, v3}, Lcom/motorola/camera/utility/ColorUtil;->isSameAspectRatio(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    const p0, 0x7f1203bd

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget v2, p0, Lcom/motorola/camera/PreviewSize;->width:I

    const/16 v3, 0x64

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ge v2, v3, :cond_3

    iget v2, p0, Lcom/motorola/camera/PreviewSize;->height:I

    if-lt v2, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iget v3, p0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-long v6, v3

    invoke-virtual {v2, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-long v6, p0

    invoke-virtual {v2, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v4

    goto :goto_1

    :cond_3
    :goto_0
    iget v2, p0, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-static {v2}, Lcom/motorola/camera/settings/PictureSizeHelper;->trimToDecimal(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    invoke-static {p0}, Lcom/motorola/camera/settings/PictureSizeHelper;->trimToDecimal(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v4

    :goto_1
    aget-object p0, v1, v5

    aget-object v1, v1, v4

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x7f120216

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sortPictureSizeByRatio(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/motorola/camera/Util;->getSplitList(Ljava/util/List;I)Ljava/util/LinkedList;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v2, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    const/16 v3, 0x15

    invoke-direct {v2, v3}, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static sortPictureSizeByTrueRatio(IILjava/util/List;)V
    .locals 6

    if-lt p0, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, p0, 0x1

    move v1, p0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    new-instance v2, Lcom/motorola/camera/PreviewSize;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    invoke-direct {v2, v3}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    move v3, p0

    :goto_1
    if-gt v3, v1, :cond_2

    new-instance v4, Lcom/motorola/camera/PreviewSize;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Size;

    invoke-direct {v4, v5}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    invoke-virtual {v2}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v5

    invoke-virtual {v4}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v4

    invoke-static {v5, v4}, Lcom/motorola/camera/utility/ColorUtil;->isSameAspectRatio(FF)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-eq v1, v0, :cond_3

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    invoke-interface {p2, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, p1, p2}, Lcom/motorola/camera/settings/PictureSizeHelper;->sortPictureSizeByTrueRatio(IILjava/util/List;)V

    return-void
.end method

.method public static trimToDecimal(I)Ljava/lang/String;
    .locals 3

    rem-int/lit8 v0, p0, 0xa

    if-nez v0, :cond_0

    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    div-int/lit8 p0, p0, 0xa

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    int-to-float p0, p0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr p0, v1

    float-to-double v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
