.class public final Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;
.super Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;
.source "SourceFile"


# instance fields
.field public mTouchDownHandled:Z

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

.field public final synthetic val$focalSegment:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;->val$focalSegment:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    const-string p1, ""

    invoke-direct {p0, p2, p3, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;->mTouchDownHandled:Z

    return-void
.end method


# virtual methods
.method public final handleSingleTap()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;->val$focalSegment:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    invoke-virtual {p0}, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->getZoomSegment()Lcom/motorola/camera/utility/ZoomSegment;

    move-result-object v2

    invoke-static {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->-$$Nest$mgetPortraitZoomValue(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)F

    move-result p0

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v1, v2, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->toggleSingleTap(Lcom/motorola/camera/utility/ZoomSegment;FLcom/motorola/camera/settings/CameraType;)V

    :cond_0
    return-void
.end method

.method public final handleTouchDown()V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCurrentValueX:F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;->val$focalSegment:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    invoke-static {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->-$$Nest$mgetPortraitZoomValue(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)F

    move-result v4

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {v3}, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->getZoomSegment()Lcom/motorola/camera/utility/ZoomSegment;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->onTouchDown(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;->mTouchDownHandled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;->mTouchDownHandled:Z

    return-void
.end method

.method public final handleTouchUp()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;->mTouchDownHandled:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->onTouchUp()V

    :cond_0
    return-void
.end method
