.class public final Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# instance fields
.field public VALUE:Lcom/motorola/camera/ui/layoutmanager/ModeValue;

.field public clickPos:Landroid/graphics/PointF;

.field public isAnimation:Z

.field public isGone:Z

.field public isRtl:Z

.field public mAlign:I

.field public final mAnimFlags:Lcom/motorola/camera/utility/Flags;

.field public final mBgTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

.field public mCellHeight:F

.field public mCellWidth:F

.field public final mContentBox:Landroid/graphics/RectF;

.field public mExpandGap:I

.field public final mFlags:Lcom/motorola/camera/utility/Flags;

.field public mFontScaleStatus:I

.field public final mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

.field public mIsReverseColor:Z

.field public final mModeDotTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

.field public mOldPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public mPaddingLeft:F

.field public mPaddingRight:F

.field public mSelected:Z

.field public mSelectedColor:I

.field public final mShadowTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

.field public mShowDot:Z

.field public mTag:I

.field public final mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public final mTextTexSlider:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public final mTouchTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

.field public mUnSelectedColor:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mAlign:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mPaddingLeft:F

    .line 4
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mPaddingRight:F

    .line 5
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mCellWidth:F

    .line 6
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mCellHeight:F

    .line 7
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mContentBox:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mSelected:Z

    .line 9
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->isRtl:Z

    .line 10
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->isGone:Z

    .line 11
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->isAnimation:Z

    .line 12
    new-instance v1, Lcom/motorola/camera/utility/Flags;

    const-class v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;

    .line 13
    invoke-direct {v1, v2, v0}, Lcom/motorola/camera/utility/Flags;-><init>(Ljava/lang/Class;Z)V

    .line 14
    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mAnimFlags:Lcom/motorola/camera/utility/Flags;

    .line 15
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    .line 16
    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    .line 17
    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getMode()Lcom/motorola/camera/ui/layoutmanager/ModeValue;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->VALUE:Lcom/motorola/camera/ui/layoutmanager/ModeValue;

    const/4 p1, -0x1

    .line 19
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTag:I

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;IZZZ)V
    .locals 7

    .line 20
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mShowDot:Z

    const/4 v0, 0x1

    .line 22
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFontScaleStatus:I

    .line 23
    new-instance v1, Lcom/motorola/camera/utility/Flags;

    const-class v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    .line 24
    invoke-direct {v1, v2, p1}, Lcom/motorola/camera/utility/Flags;-><init>(Ljava/lang/Class;Z)V

    .line 25
    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFlags:Lcom/motorola/camera/utility/Flags;

    if-nez p4, :cond_0

    .line 26
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->MENU:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    invoke-virtual {v1, p1}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    .line 27
    :cond_0
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->SLIDER:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    if-eqz p4, :cond_1

    if-nez p5, :cond_1

    invoke-virtual {v1, p1}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    :cond_1
    if-eqz p4, :cond_2

    if-eqz p5, :cond_2

    .line 28
    sget-object p4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->SLIDER_BG:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    invoke-virtual {v1, p4}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    .line 29
    :cond_2
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz p6, :cond_3

    .line 30
    new-instance p4, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object p5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const p6, 0x7f080389

    invoke-direct {p4, p5, p6}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mModeDotTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    .line 31
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mShowDot:Z

    .line 32
    :cond_3
    iget-object p4, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p4, Ljava/util/Set;

    .line 33
    invoke-interface {p4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 34
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 35
    iget-object v3, p2, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    const/16 p1, 0xd

    int-to-float v4, p1

    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 36
    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/String;FII)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTexSlider:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 37
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    .line 38
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object p3

    .line 39
    iget p3, p3, Lcom/motorola/camera/ui/widgets/ColorToolbox;->surfaceMain:I

    .line 40
    invoke-direct {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mBgTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 41
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    sget-object p3, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mShadowTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 42
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTouchTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const p2, 0x3e4ccccd    # 0.2f

    .line 43
    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 44
    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    .line 45
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p2

    .line 46
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->VALUE:Lcom/motorola/camera/ui/layoutmanager/ModeValue;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p3, 0x38

    int-to-float p3, p3

    mul-float/2addr p2, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->VALUE:Lcom/motorola/camera/ui/layoutmanager/ModeValue;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    return-void

    :cond_4
    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mBgTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 48
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->updateExpandGap()V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;Landroid/graphics/PointF;Lcom/motorola/camera/utility/Flags;Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;)V
    .locals 2

    .line 49
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mShowDot:Z

    const/4 v0, 0x1

    .line 51
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFontScaleStatus:I

    .line 52
    new-instance v0, Lcom/motorola/camera/utility/Flags;

    const-class v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    .line 53
    invoke-direct {v0, v1, p1}, Lcom/motorola/camera/utility/Flags;-><init>(Ljava/lang/Class;Z)V

    .line 54
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 55
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 56
    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTexSlider:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 57
    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    .line 58
    iput-object p6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->clickPos:Landroid/graphics/PointF;

    .line 59
    iput-object p5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mBgTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 60
    invoke-virtual {v0, p7}, Lcom/motorola/camera/utility/Flags;->addAll(Ljava/util/Collection;)Z

    .line 61
    iput-object p8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mModeDotTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    return-void
.end method


# virtual methods
.method public final DP(F)F
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p0

    mul-float/2addr p0, p1

    return p0
.end method

.method public final beginEdit()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->EDIT:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/ui/widgets/ColorToolbox;->surfaceLight:I

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mBgTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(I)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryLight:I

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mShadowTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(I)V

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTouchTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->updateBgTex()V

    return-void
.end method

.method public final changeToSliderBg(IZ)V
    .locals 3

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->MENU:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->SLIDER_BG:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFlags:Lcom/motorola/camera/utility/Flags;

    if-eqz p2, :cond_0

    invoke-virtual {v2, v1}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    invoke-virtual {v2, v0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->left(F)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->right(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v1}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->left(F)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->right(F)V

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->updateText()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->updatePostTranslation()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->updateShadowTex()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mPaddingLeft:F

    add-float/2addr p1, p2

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mPaddingRight:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mCellWidth:F

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->updateBgTex()V

    return-void
.end method

.method public final drawFbo([F[F)V
    .locals 4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v1, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->EDIT:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mBgTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    :cond_1
    iget-object v1, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->SHADOW:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mShadowTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    :cond_2
    iget-object v1, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->MENU:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz v1, :cond_3

    invoke-virtual {v2, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v1, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->SLIDER_BG:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    if-nez v1, :cond_4

    invoke-virtual {v2, v3, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTexSlider:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v1, v3, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    :goto_0
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->SLIDER:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mShowDot:Z

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mModeDotTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final endEdit()V
    .locals 2

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->EDIT:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->REMOVED:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->SHADOW:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->surfaceMain:I

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mBgTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(I)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTouchTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->setAlpha(F)V

    return-void
.end method

.method public final fixed(FF)V
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p0

    mul-float/2addr p0, p2

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-void
.end method

.method public final getContentSize()Landroid/graphics/PointF;
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v1, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->SLIDER_BG:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v2, 0x42800000    # 64.0f

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTexSlider:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    new-instance v1, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->VALUE:Lcom/motorola/camera/ui/layoutmanager/ModeValue;

    iget v3, v3, Lcom/motorola/camera/ui/layoutmanager/ModeValue;->BORDER_GAP:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x6

    int-to-float v3, v3

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->DP(F)F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->DP(F)F

    move-result p0

    invoke-direct {v1, v3, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1

    :cond_0
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->SLIDER:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    new-instance v1, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->VALUE:Lcom/motorola/camera/ui/layoutmanager/ModeValue;

    iget v3, v3, Lcom/motorola/camera/ui/layoutmanager/ModeValue;->BORDER_GAP:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x6

    int-to-float v3, v3

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->DP(F)F

    move-result v3

    add-float/2addr v3, v0

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mExpandGap:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->DP(F)F

    move-result p0

    invoke-direct {v1, v3, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1

    :cond_1
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->VALUE:Lcom/motorola/camera/ui/layoutmanager/ModeValue;

    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/ModeValue;->WIDTH:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->DP(F)F

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->VALUE:Lcom/motorola/camera/ui/layoutmanager/ModeValue;

    iget v2, v2, Lcom/motorola/camera/ui/layoutmanager/ModeValue;->HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->DP(F)F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized getRect()Lcom/motorola/camera/SecureDataHelper;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->isGone:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    div-float/2addr v2, v1

    new-instance v1, Lcom/motorola/camera/SecureDataHelper;

    neg-float v3, v0

    neg-float v4, v2

    invoke-direct {v1, v3, v2, v0, v4}, Lcom/motorola/camera/SecureDataHelper;-><init>(FFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_1
    new-instance v0, Lcom/motorola/camera/SecureDataHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/motorola/camera/SecureDataHelper;-><init>(FFFF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized getSortRect()Lcom/motorola/camera/SecureDataHelper;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->isGone:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mPaddingRight:F

    add-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    div-float/2addr v2, v1

    new-instance v1, Lcom/motorola/camera/SecureDataHelper;

    neg-float v3, v0

    neg-float v4, v2

    invoke-direct {v1, v3, v2, v0, v4}, Lcom/motorola/camera/SecureDataHelper;-><init>(FFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_1
    new-instance v0, Lcom/motorola/camera/SecureDataHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/motorola/camera/SecureDataHelper;-><init>(FFFF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method public final isSelected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mSelected:Z

    return p0
.end method

.method public final left(F)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mPaddingLeft:F

    return-void
.end method

.method public final loadTexture()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->loadTexture()V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTexSlider:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mBgTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v0, :cond_2

    monitor-enter v0

    monitor-exit v0

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mShadowTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v0, :cond_3

    monitor-enter v0

    monitor-exit v0

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mModeDotTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->loadTexture()V

    :cond_4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->updateBgTex()V

    return-void
.end method

.method public final onDraw([F[F)V
    .locals 8

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v1, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v0, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->EDIT:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const/16 v3, 0x12

    const/4 v4, 0x6

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->SLIDER_BG:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_1
    iget-object v0, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->SHADOW:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mShadowTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p0, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void

    :cond_2
    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_GAO_DING_NAME:Z

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mBgTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTag:I

    if-eq v0, v4, :cond_3

    if-ne v0, v3, :cond_4

    :cond_3
    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->surfaceDark:I

    invoke-virtual {v7, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(I)V

    :cond_4
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTag:I

    if-eqz v0, :cond_5

    if-ne v0, v2, :cond_6

    :cond_5
    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->surfaceDark:I

    invoke-virtual {v7, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(I)V

    :cond_6
    invoke-virtual {v7, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_7
    iget-object v0, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->MENU:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTouchTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_8
    invoke-virtual {v6, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    goto :goto_0

    :cond_9
    iget-object v0, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v6, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    goto :goto_0

    :cond_a
    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_GAO_DING_NAME:Z

    const v5, 0x3ec28f5c    # 0.38f

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTexSlider:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTag:I

    if-eq v0, v4, :cond_b

    if-ne v0, v3, :cond_c

    :cond_b
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v0

    mul-float/2addr v0, v5

    invoke-virtual {v6, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    :cond_c
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTag:I

    if-eqz v0, :cond_d

    if-ne v0, v2, :cond_e

    :cond_d
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v0

    mul-float/2addr v0, v5

    invoke-virtual {v6, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    :cond_e
    invoke-virtual {v6, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :goto_0
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->SLIDER:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mShowDot:Z

    if-eqz p1, :cond_f

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mModeDotTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_f
    :goto_1
    return-void
.end method

.method public final onPreDraw([F[F)V
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object p2, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p2, Ljava/util/Set;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->MENU:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    iget-object p1, p1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->SLIDER:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mShowDot:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mModeDotTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    :goto_0
    return-void
.end method

.method public final right(F)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mPaddingRight:F

    return-void
.end method

.method public final declared-synchronized setAlpha(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTexSlider:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mBgTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final setDisplayOrientation(I)V
    .locals 4

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    int-to-float v1, p1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/Rotation;-><init>(FFFF)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    return-void
.end method

.method public final setOldPosition(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 1

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mOldPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    return-void
.end method

.method public final setReverseColor(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mIsReverseColor:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->updateRes()V

    return-void
.end method

.method public final setSelected(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mSelected:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mSelected:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->updateRes()V

    :cond_0
    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public final setTextScale()V
    .locals 2

    const v0, 0x3f9c28f6    # 1.22f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFontScaleStatus:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BitmapTextCell{mTextTex="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTextTexSlider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTexSlider:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIconTex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mBgTex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mBgTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mShadowTex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mShadowTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSelectedColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mSelectedColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mUnSelectedColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mUnSelectedColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", clickPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->clickPos:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unloadTexture()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->unloadTexture()V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTexSlider:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mBgTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mShadowTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mModeDotTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->unloadTexture()V

    :cond_4
    return-void
.end method

.method public final updateBgTex()V
    .locals 3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->MENU:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mBgTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    return-void

    :cond_0
    if-eqz v2, :cond_1

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->DP(F)F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x41f80000    # 31.0f

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->DP(F)F

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    const/high16 v0, 0x41780000    # 15.5f

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->DP(F)F

    move-result p0

    iput p0, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    const/4 p0, 0x1

    invoke-virtual {v2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_1
    return-void
.end method

.method public final updateContentBox(FF)V
    .locals 9

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mCellWidth:F

    sub-float v3, v2, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, p1

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mCellHeight:F

    sub-float/2addr v5, v0

    div-float/2addr v5, v4

    add-float/2addr v5, p2

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mAlign:I

    and-int/lit8 p2, p2, 0x10

    if-eqz p2, :cond_0

    add-float p2, p1, v2

    sub-float v3, p2, v1

    :cond_0
    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mPaddingLeft:F

    const/4 v6, 0x0

    cmpl-float v7, p2, v6

    if-eqz v7, :cond_1

    add-float v3, p1, p2

    :cond_1
    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->isRtl:Z

    if-eqz p2, :cond_2

    if-eqz v7, :cond_2

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mPaddingRight:F

    add-float/2addr v3, p1

    :cond_2
    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mPaddingRight:F

    cmpl-float v8, v7, v6

    if-eqz v8, :cond_3

    add-float/2addr v2, p1

    sub-float/2addr v2, v1

    sub-float v3, v2, v7

    :cond_3
    if-eqz p2, :cond_4

    if-eqz v8, :cond_4

    add-float v3, p1, v7

    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mContentBox:Landroid/graphics/RectF;

    iput v3, p1, Landroid/graphics/RectF;->left:F

    iput v5, p1, Landroid/graphics/RectF;->bottom:F

    add-float p2, v5, v0

    iput p2, p1, Landroid/graphics/RectF;->top:F

    add-float p2, v3, v1

    iput p2, p1, Landroid/graphics/RectF;->right:F

    div-float/2addr v1, v4

    add-float/2addr v1, v3

    div-float/2addr v0, v4

    add-float/2addr v0, v5

    invoke-virtual {p0, v1, v0, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->updatePostTranslation()V

    return-void
.end method

.method public final updateExpandGap()V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const v1, 0x3f9c28f6    # 1.22f

    mul-float/2addr v1, v0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v3

    const v4, 0x401c28f6    # 2.44f

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    sub-float/2addr v1, v0

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    const/high16 v2, 0x41900000    # 18.0f

    mul-float/2addr v0, v2

    sub-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mExpandGap:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mExpandGap:I

    :cond_0
    return-void
.end method

.method public final updatePostTranslation()V
    .locals 9

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getMode()Lcom/motorola/camera/ui/layoutmanager/ModeValue;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->VALUE:Lcom/motorola/camera/ui/layoutmanager/ModeValue;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearTranslation()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTexSlider:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearTranslation()V

    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearTranslation()V

    :cond_1
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v4, v3, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v4, Ljava/util/Set;

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->SLIDER:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->VALUE:Lcom/motorola/camera/ui/layoutmanager/ModeValue;

    iget v4, v4, Lcom/motorola/camera/ui/layoutmanager/ModeValue;->SLIDER_FONT:I

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextSize(F)V

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->VALUE:Lcom/motorola/camera/ui/layoutmanager/ModeValue;

    iget v4, v4, Lcom/motorola/camera/ui/layoutmanager/ModeValue;->SLIDER_FONT:I

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->VALUE:Lcom/motorola/camera/ui/layoutmanager/ModeValue;

    iget v4, v4, Lcom/motorola/camera/ui/layoutmanager/ModeValue;->MENU_FONT:I

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextSize(F)V

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->VALUE:Lcom/motorola/camera/ui/layoutmanager/ModeValue;

    iget v4, v4, Lcom/motorola/camera/ui/layoutmanager/ModeValue;->MENU_FONT:I

    :goto_0
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->VALUE:Lcom/motorola/camera/ui/layoutmanager/ModeValue;

    iget v4, v4, Lcom/motorola/camera/ui/layoutmanager/ModeValue;->HEIGHT:I

    const/16 v5, 0x38

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->DP(F)F

    move-result v4

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->VALUE:Lcom/motorola/camera/ui/layoutmanager/ModeValue;

    iget v7, v7, Lcom/motorola/camera/ui/layoutmanager/ModeValue;->HEIGHT:I

    int-to-float v7, v7

    div-float/2addr v7, v6

    int-to-float v5, v5

    sub-float/2addr v7, v5

    const/high16 v5, 0x40800000    # 4.0f

    sub-float/2addr v7, v5

    invoke-virtual {p0, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->DP(F)F

    move-result v5

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getScaledHeight()F

    move-result v7

    div-float/2addr v7, v6

    float-to-int v7, v7

    int-to-float v7, v7

    sub-float/2addr v5, v7

    const/4 v7, 0x0

    if-eqz v1, :cond_3

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->VALUE:Lcom/motorola/camera/ui/layoutmanager/ModeValue;

    iget v8, v8, Lcom/motorola/camera/ui/layoutmanager/ModeValue;->SLIDER_FONT:I

    int-to-float v8, v8

    invoke-virtual {v1, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextSize(F)V

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mBgTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v8, v7, v7, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    invoke-virtual {v1, v7, v7, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :cond_3
    iget-object v1, v3, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    sget-object v8, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->MENU:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    invoke-interface {v1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0, v7, v7, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v7, v5, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {v2, v7, v4, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTouchTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v1, v7, v4, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :cond_5
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mShadowTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v1, :cond_7

    iget-object v2, v3, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1, v7, v4, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_2

    :cond_6
    invoke-virtual {v1, v7, v7, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :cond_7
    :goto_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mModeDotTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    if-eqz p0, :cond_8

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v6

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v6

    const/high16 v2, 0x40a00000    # 5.0f

    sub-float/2addr v0, v2

    invoke-virtual {p0, v1, v0, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :cond_8
    return-void
.end method

.method public final updateRes()V
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v1, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->SLIDER_BG:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTexSlider:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    :goto_0
    iget-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mSelected:Z

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const/4 v4, 0x0

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->MENU:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mSelectedColor:I

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextColor(I)V

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mUnSelectedColor:I

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextColor(I)V

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/16 v2, 0x1f4

    invoke-static {v0, v2, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_1
    if-eqz v3, :cond_2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mSelectedColor:I

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setColor(I)V

    :cond_2
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mSelectedColor:I

    invoke-virtual {v1, v6, v6, v6, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setShadowLayer(FFFI)V

    return-void

    :cond_3
    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mUnSelectedColor:I

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextColor(I)V

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTypeface(Landroid/graphics/Typeface;)V

    if-eqz v3, :cond_4

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mUnSelectedColor:I

    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setColor(I)V

    :cond_4
    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mSelectedColor:I

    invoke-virtual {v1, v6, v6, v6, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setShadowLayer(FFFI)V

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mIsReverseColor:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    if-eqz v0, :cond_6

    move v0, v6

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    :goto_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->sliderShadow:I

    invoke-virtual {v1, v0, v6, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setShadowLayer(FFFI)V

    return-void
.end method

.method public final updateShadowTex()V
    .locals 3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->MENU:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mShadowTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-nez v1, :cond_0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->DP(F)F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x41f80000    # 31.0f

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->DP(F)F

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    const/high16 v0, 0x41780000    # 15.5f

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->DP(F)F

    move-result v0

    iput v0, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42900000    # 72.0f

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->DP(F)F

    move-result v1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->DP(F)F

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    const/high16 v0, 0x42100000    # 36.0f

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->DP(F)F

    move-result v0

    iput v0, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->DP(F)F

    move-result p0

    invoke-virtual {v2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setLineWidth(F)V

    return-void
.end method

.method public final updateText()V
    .locals 3

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTag:I

    const/16 v2, 0x22

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->MENU:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz v1, :cond_1

    const p0, 0x7f120462

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    return-void

    :cond_1
    const v1, 0x7f12046d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTexSlider:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public final updateUnSelectedColor(I)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mUnSelectedColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mUnSelectedColor:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->updateRes()V

    :cond_0
    return-void
.end method
