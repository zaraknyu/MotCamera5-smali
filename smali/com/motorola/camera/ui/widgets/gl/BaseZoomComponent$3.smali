.class public final Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$3;
.super Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;
.source "SourceFile"


# instance fields
.field public final mOffDrawable:I

.field public final mOnDrawable:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Ljava/lang/String;)V

    const p1, 0x7f08022b

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$3;->mOnDrawable:I

    const p1, 0x7f080223

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$3;->mOffDrawable:I

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setToggleType(I)V

    return-void
.end method


# virtual methods
.method public final handleSingleTap()V
    .locals 2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$3;->onSelected(Z)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_MACRO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->AUTO_MACRO_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public final handleTouchDown()V
    .locals 0

    return-void
.end method

.method public final handleTouchUp()V
    .locals 0

    return-void
.end method

.method public final onSelected(Z)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSelected:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mImageTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->getColor(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setColor(I)V

    const/high16 v0, 0x42200000    # 40.0f

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mDensity:F

    mul-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->updateOutlineSize(F)V

    sget-boolean v0, Lcom/motorola/camera/utility/ZoomHelper;->sIsLight:Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->toggleLightBg:I

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->toggleDarkBg:I

    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mOutline:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(I)V

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$3;->mOnDrawable:I

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setXmlResource(I)V

    return-void

    :cond_1
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$3;->mOffDrawable:I

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setXmlResource(I)V

    return-void
.end method
