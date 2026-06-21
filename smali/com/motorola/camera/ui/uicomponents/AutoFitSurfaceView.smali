.class public Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;
.super Landroid/view/SurfaceView;
.source "SourceFile"


# instance fields
.field public mAspectRatio:F

.field public mPreviewHeight:I

.field public mPreviewWidth:I

.field public mVertical:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;->mPreviewWidth:I

    iput v0, p0, Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;->mPreviewHeight:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;->mAspectRatio:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;->mVertical:Z

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;->mVertical:Z

    iget p1, p0, Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;->mPreviewWidth:I

    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;->mPreviewHeight:I

    if-eqz v0, :cond_1

    int-to-float v0, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    iput v0, p0, Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;->mAspectRatio:F

    return-void

    :cond_1
    int-to-float p1, p1

    int-to-float v0, v1

    div-float/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;->mAspectRatio:F

    return-void
.end method

.method public final onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;->mPreviewWidth:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;->mPreviewHeight:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v0, p1

    int-to-float v1, p2

    iget v2, p0, Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;->mAspectRatio:F

    mul-float v3, v1, v2

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    div-float/2addr v0, v2

    float-to-int p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    :cond_1
    mul-float/2addr v1, v2

    float-to-int p1, v1

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method
