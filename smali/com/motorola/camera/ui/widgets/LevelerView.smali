.class public final Lcom/motorola/camera/ui/widgets/LevelerView;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mDensity:F

.field public mDeviationValue:I

.field public mLeveled:Z

.field public final mLeveledColor:I

.field public final mLevelerHeight:F

.field public final mLevelerLine:Landroid/widget/ImageView;

.field public mLevelerWidth:F

.field public final mMainLine:Landroid/widget/ImageView;

.field public mMainLineWidth:F

.field public mOrientation:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/PreviewSize;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mDensity:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerHeight:F

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/LevelerView;->computeWidth(Lcom/motorola/camera/PreviewSize;Landroid/view/View;)V

    const p1, 0x7f0a02a4

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLine:Landroid/widget/ImageView;

    const p1, 0x7f0a0284

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerLine:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f060405

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLeveledColor:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/LevelerView;->updateResource()V

    return-void
.end method


# virtual methods
.method public final computeWidth(Lcom/motorola/camera/PreviewSize;Landroid/view/View;)V
    .locals 2

    const/high16 v0, 0x40400000    # 3.0f

    if-eqz p1, :cond_3

    sget-object p2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean p2, p2, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez p2, :cond_0

    iget p2, p1, Lcom/motorola/camera/PreviewSize;->width:I

    iget v1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerWidth:F

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p1, p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLineWidth:F

    return-void

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAnyVideoMode()Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    :goto_0
    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p2, Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {}, Lcom/motorola/camera/Util;->isDeviceOnLandscapeOnDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p1, p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLineWidth:F

    iget-object p2, p2, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p2}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result p2

    div-float/2addr p1, p2

    div-float/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerWidth:F

    return-void

    :cond_2
    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p1, p1

    iget-object p2, p2, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p2}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLineWidth:F

    div-float/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerWidth:F

    return-void

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLineWidth:F

    div-float/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerWidth:F

    return-void
.end method

.method public final setLevelOrientation(FI)V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mOrientation:I

    add-int/lit16 v1, v0, -0xb4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mDeviationValue:I

    const/16 v1, 0x2d

    if-le p2, v1, :cond_0

    rsub-int p2, p2, 0xb4

    iput p2, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mDeviationValue:I

    :cond_0
    iget p2, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mDeviationValue:I

    const/4 v1, 0x2

    if-gt p2, v1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    int-to-float p1, v0

    goto :goto_1

    :cond_2
    neg-float p1, p1

    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerLine:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLeveled:Z

    if-ne p2, p1, :cond_3

    return-void

    :cond_3
    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLeveled:Z

    const/4 p1, -0x1

    iget v1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLeveledColor:I

    if-eqz p2, :cond_4

    move v2, v1

    goto :goto_2

    :cond_4
    move v2, p1

    :goto_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLine:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    if-eqz p2, :cond_5

    move p1, v1

    :cond_5
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method public final updateMainLineResource()V
    .locals 11

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLine:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mOrientation:I

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    int-to-float v0, v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLineWidth:F

    float-to-int v0, v0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLineWidth:F

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    float-to-int v0, v0

    iget v2, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerHeight:F

    float-to-int v3, v2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    new-instance v8, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v8, v4}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v4, -0x1

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mDensity:F

    mul-float/2addr v5, v4

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v4, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLineWidth:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float v5, v4, v9

    iget v6, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerWidth:F

    sub-float/2addr v5, v6

    move v7, v4

    move v4, v5

    div-float v5, v2, v9

    div-float/2addr v7, v9

    div-float/2addr v6, v9

    sub-float v6, v7, v6

    div-float v7, v2, v9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v4, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLineWidth:F

    div-float v5, v4, v9

    iget p0, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerWidth:F

    div-float v6, p0, v9

    add-float/2addr v6, v5

    div-float v5, v2, v9

    div-float/2addr v4, v9

    add-float/2addr v4, p0

    div-float v7, v2, v9

    move v10, v6

    move v6, v4

    move v4, v10

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final updateResource()V
    .locals 10

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/LevelerView;->updateMainLineResource()V

    iget v0, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerWidth:F

    float-to-int v0, v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerHeight:F

    float-to-int v2, v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    new-instance v7, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v7, v3}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v3, -0x1

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v3, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mDensity:F

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v3, v8

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v3, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerWidth:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v3, v9

    const/4 v4, 0x0

    iget v6, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerHeight:F

    move v5, v3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    div-float v4, v1, v9

    iget v5, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerWidth:F

    const/4 v3, 0x0

    move v6, v4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerWidth:F

    div-float/2addr v1, v9

    sub-float v3, v4, v8

    invoke-virtual {v2, v1, v4, v3, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerLine:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
