.class public final Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;

.field public final synthetic val$borderDelta:F

.field public final synthetic val$enterSplitMode:Z

.field public final synthetic val$heightDelta:F

.field public final synthetic val$maxHollowTop:F

.field public final synthetic val$offset:F

.field public final synthetic val$startBorder:F

.field public final synthetic val$startHeight:F

.field public final synthetic val$startTop:F

.field public final synthetic val$startWidth:F

.field public final synthetic val$widthDelta:F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;FFFFFFFFZF)V
    .locals 1

    const/16 v0, 0x13

    invoke-direct {p0, v0}, Landroidx/collection/internal/Lock;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;->val$startWidth:F

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;->val$widthDelta:F

    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;->val$startHeight:F

    iput p5, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;->val$heightDelta:F

    iput p6, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;->val$startTop:F

    iput p7, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;->val$offset:F

    iput p8, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;->val$startBorder:F

    iput p9, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;->val$borderDelta:F

    iput-boolean p10, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;->val$enterSplitMode:Z

    iput p11, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;->val$maxHollowTop:F

    return-void
.end method


# virtual methods
.method public final applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;F)V
    .locals 8

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;->val$widthDelta:F

    mul-float/2addr p1, p2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;->val$startWidth:F

    add-float v3, p1, v0

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;->val$heightDelta:F

    mul-float/2addr p1, p2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;->val$startHeight:F

    add-float v4, p1, v0

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;->val$offset:F

    mul-float/2addr p1, p2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;->val$startTop:F

    add-float v5, p1, v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;

    iget-object p1, v1, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;

    invoke-virtual {p1, v3, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->setModuleSizes(FFF)V

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;->val$borderDelta:F

    mul-float/2addr p1, p2

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;->val$startBorder:F

    add-float v7, p1, p2

    iget-object p1, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object p2, p2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isFoldLayout()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-boolean v6, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;->val$enterSplitMode:Z

    invoke-virtual/range {v1 .. v7}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->setFoldHollowSize(Lcom/motorola/camera/ui/layoutmanager/LayoutManager;FFFZF)V

    goto :goto_1

    :cond_0
    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p2, v7

    sub-float/2addr v3, p2

    sub-float/2addr v4, p2

    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;->val$enterSplitMode:Z

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40800000    # 4.0f

    mul-float/2addr p2, v3

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr p2, v0

    invoke-static {v4, p2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    :goto_0
    sub-float/2addr v5, v7

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;->val$maxHollowTop:F

    invoke-static {v5, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    iget-object p2, v1, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mDisplayTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;

    invoke-virtual {p2, v3, v4, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ArcRectangleTexture;->setHollowSize(FFF)V

    :goto_1
    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void
.end method

.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method

.method public final onAnimationStart()V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method
