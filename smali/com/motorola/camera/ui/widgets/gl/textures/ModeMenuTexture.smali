.class public final Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public firstPoint:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public final mCellAll:Ljava/util/ArrayList;

.field public final mComponent:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

.field public final mDensity:F

.field public final mDoneBg:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

.field public final mDoneText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public final mDragBehavior:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$2;

.field public mDragMsg:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public final mFlags:Lcom/motorola/camera/utility/Flags;

.field public final mFooterRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

.field public final mHandler:Landroid/os/Handler;

.field public final mHeaderRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

.field public mLastPosition:Landroid/graphics/PointF;

.field public mLoaded:Z

.field public final mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

.field public mMenuY:F

.field public final mModesItemCache:Ljava/util/concurrent/ConcurrentHashMap;

.field public mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

.field public mOnDownCoords:Landroid/graphics/PointF;

.field public mOnDownHandled:Z

.field public mOnDownOrigin:Landroid/graphics/PointF;

.field public final mPhotoRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

.field public mShouldHidden:Z

.field public final mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

.field public final mSliderArea:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

.field public final mSliderBg:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

.field public final mSliderRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

.field public mStop:Lcom/motorola/camera/mcf/Mcf$8;

.field public final mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

.field public final mTouchTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

.field public final mTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public final mViewSize:Lcom/motorola/camera/PreviewSize;

.field public movePoint:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public final onMenuListener:Lcom/google/android/gms/tasks/zzb;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;Lcom/motorola/camera/PreviewSize;)V
    .locals 6

    invoke-direct {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mOnDownHandled:Z

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mLoaded:Z

    new-instance v1, Lcom/motorola/camera/utility/Flags;

    const-class v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    invoke-direct {v1, v2, v0}, Lcom/motorola/camera/utility/Flags;-><init>(Ljava/lang/Class;Z)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/motorola/camera/device/CameraService$$ExternalSyntheticLambda0;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Lcom/motorola/camera/device/CameraService$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mHandler:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mShouldHidden:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mCellAll:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/gms/tasks/zzb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/tasks/zzb;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->onMenuListener:Lcom/google/android/gms/tasks/zzb;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$2;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDragBehavior:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$2;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mModesItemCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-direct {p1, p2, p3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/ModesBaseComponent;Z)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    const/4 v2, 0x1

    invoke-direct {v1, p2, p3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/ModesBaseComponent;Z)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iput-boolean v2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mForceUp:Z

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p3

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDensity:F

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v3, -0x1

    invoke-direct {v1, p2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderArea:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setLineWidth(F)V

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE_BG:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setBgColor(Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mTouchTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const v4, 0x3e4ccccd    # 0.2f

    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    const/high16 v4, 0x42500000    # 52.0f

    mul-float/2addr v4, p3

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    new-instance v1, Lcom/motorola/camera/PreviewSize;

    iget v4, p4, Lcom/motorola/camera/PreviewSize;->width:I

    iget p4, p4, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-direct {v1, v4, p4}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    new-instance p4, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->BLACK:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {p4, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderBg:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p4, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    new-instance p4, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/ui/widgets/ColorToolbox;->buttonBackground:I

    invoke-direct {p4, p2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneBg:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v5, 0x7f12018c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xe

    int-to-float v5, v5

    invoke-direct {v1, p2, v4, v5, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/String;FI)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object p2

    iget p2, p2, Lcom/motorola/camera/ui/widgets/ColorToolbox;->buttonTextUnSelected:I

    invoke-virtual {v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextColor(I)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    invoke-virtual {p4, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    sget-object p2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p2}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result p2

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->row()Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    move-result-object p4

    iput v0, p4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mFixedHeight:I

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mHeaderRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->row()Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    move-result-object p4

    const/4 v1, 0x3

    iput v1, p4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->maxCol:I

    iput v0, p4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mLineGap:I

    const/16 v0, 0x5a

    iput v0, p4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mFixedHeight:I

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mPhotoRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->row()Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    move-result-object p4

    const/16 v0, 0x74

    iput v0, p4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mFixedHeight:I

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFooterRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->showScrollBar()V

    const/high16 p4, 0x41a00000    # 20.0f

    mul-float/2addr p3, p4

    iget-object p4, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iput p3, p4, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityFrom:F

    iput p3, p4, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityTo:F

    const/4 p3, 0x2

    iput p3, p4, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mMask:I

    monitor-enter p1

    :try_start_0
    iget-object p4, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mRows:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iput-boolean p2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->isRtl:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    monitor-exit p1

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    monitor-enter p2

    :try_start_1
    iget-object p1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mRows:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iput p3, p4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mGravity:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_1
    monitor-exit p2

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iput-boolean v2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mBottomToTop:Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->showScrollBar()V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->row()Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    move-result-object p1

    const/16 p2, 0x40

    iput p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mFixedHeight:I

    iput p3, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mGravity:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->row()Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    move-result-object p1

    const/16 p2, 0x64

    iput p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mFixedHeight:I

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    const/high16 p2, 0x43700000    # 240.0f

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDensity:F

    mul-float/2addr p0, p2

    iput p0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mCenterBorder:F

    return-void

    :goto_2
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_3
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static canRemove(I)Z
    .locals 2

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_GAO_DING_NAME:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eqz p0, :cond_1

    if-eq p0, v1, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    if-eq p0, v1, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final declared-synchronized addSupportedTextures(Lcom/motorola/camera/PreviewSize;I)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mModesItemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getMode()Lcom/motorola/camera/ui/layoutmanager/ModeValue;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getMenuOrder()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lcom/google/android/material/button/MaterialButtonToggleGroup$1;

    invoke-direct {v3, v2}, Lcom/google/android/material/button/MaterialButtonToggleGroup$1;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mPhotoRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    filled-new-array {v3}, [Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->clearRowAndAdapter([Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSlider(Z)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mPhotoRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget v5, v0, Lcom/motorola/camera/ui/layoutmanager/ModeValue;->MENU_GAP:I

    iput v5, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mLineGap:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    const/16 v7, 0x1f

    const/16 v8, 0x18

    if-eq v5, v8, :cond_5

    if-ne v5, v7, :cond_1

    goto :goto_2

    :cond_1
    const/4 v7, 0x6

    const/16 v8, 0x12

    if-eq v5, v8, :cond_3

    if-ne v5, v7, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_3

    :cond_3
    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    move v6, v2

    goto :goto_3

    :cond_5
    :goto_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_6
    :goto_3
    if-eqz v6, :cond_7

    goto :goto_0

    :cond_7
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mModesItemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    if-nez v5, :cond_8

    const-string v5, "ModeMenuTexture"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mode not loaded "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_8
    invoke-virtual {v5, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->setSelected(Z)V

    iget-object v6, v5, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v6}, Lcom/motorola/camera/utility/Flags;->clear()V

    sget-object v7, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->MENU:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    invoke-virtual {v6, v7}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->left(F)V

    invoke-virtual {v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->right(F)V

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->updatePostTranslation()V

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->updateShadowTex()V

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->updateText()V

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget v7, v5, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mPaddingLeft:F

    add-float/2addr v6, v7

    iget v7, v5, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mPaddingRight:F

    add-float/2addr v6, v7

    iput v6, v5, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mCellWidth:F

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mPhotoRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v7, v0, Lcom/motorola/camera/ui/layoutmanager/ModeValue;->WIDTH:I

    int-to-float v7, v7

    iget v8, v0, Lcom/motorola/camera/ui/layoutmanager/ModeValue;->HEIGHT:I

    int-to-float v8, v8

    invoke-virtual {v5, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->fixed(FF)V

    iget v7, v0, Lcom/motorola/camera/ui/layoutmanager/ModeValue;->LEFT:I

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->left(F)V

    iget v7, v0, Lcom/motorola/camera/ui/layoutmanager/ModeValue;->RIGHT:I

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->right(F)V

    invoke-virtual {v6, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->addCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;)V

    const/16 v6, 0x10

    iput v6, v5, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mAlign:I

    iput v4, v5, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTag:I

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mPhotoRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    filled-new-array {v1}, [Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->updateAdapter([Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->updateMenuArea()V

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->rotateLayout(Lcom/motorola/camera/PreviewSize;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_4
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final beginEditSlider(Landroid/os/Bundle;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->updateSliderPos()V

    const-string v2, "SLIDER_TAG"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "SLIDER_POINT"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    const-string v5, "SLIDER_CLICK"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    const-string v6, "SLIDER_CELL_POS"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    filled-new-array {v6}, [Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    move-result-object v6

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v7, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->clearRowAndAdapter([Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v8, 0x1

    invoke-static {v6, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils;->createSlider(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Z)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mCellAll:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v9, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    invoke-virtual {v12, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->addCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;)V

    iput v8, v9, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mAlign:I

    invoke-virtual {v9, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->right(F)V

    invoke-virtual {v9, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->left(F)V

    invoke-virtual {v9, v10, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->changeToSliderBg(IZ)V

    goto :goto_0

    :cond_0
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    filled-new-array {v6}, [Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->updateAdapter([Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->doLayout$1()V

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDensity:F

    const/4 v9, 0x4

    if-eq v2, v3, :cond_3

    invoke-static {v2}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToSliderMode(I)I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->findTag(I)Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    move-result-object v3

    iput-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    if-nez v3, :cond_2

    const/16 v3, 0x12

    const/4 v12, 0x6

    if-ne v2, v12, :cond_1

    invoke-static {v3}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToSliderMode(I)I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->findTag(I)Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    move-result-object v2

    iput-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    goto :goto_1

    :cond_1
    if-ne v2, v3, :cond_9

    invoke-static {v12}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToSliderMode(I)I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->findTag(I)Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    move-result-object v2

    iput-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    :cond_2
    :goto_1
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->SLIDER_TOUCH_DOWN:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v3, v2}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->LIST_LONG_PRESS:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    invoke-virtual {v3, v2}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v3, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v3, v4, v11}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iput-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->firstPoint:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v12, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v12

    iget v12, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v12

    invoke-direct {v2, v3, v4, v11}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iput-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->movePoint:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iput-object v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->clickPos:Landroid/graphics/PointF;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->beginEdit()V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mTouchTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v2, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    invoke-virtual {v7, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    const/high16 v3, 0x42200000    # 40.0f

    mul-float/2addr v3, v6

    sub-float/2addr v1, v3

    iput v1, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-virtual {v7, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    move v1, v8

    goto :goto_2

    :cond_3
    move v1, v10

    :goto_2
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    if-eqz v2, :cond_4

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_5

    :cond_4
    invoke-virtual {v7, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->setDisplayOrientation(I)V

    :cond_5
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    if-eqz v2, :cond_7

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTag:I

    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->canRemove(I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDragMsg:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v4, 0x7f120200

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDragMsg:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const v3, 0x3e99999a    # 0.3f

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDragMsg:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/16 v3, 0xb

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextSize(F)V

    goto :goto_3

    :cond_6
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDragMsg:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v4, 0x7f1203ed

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDragMsg:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDragMsg:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/16 v3, 0xe

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextSize(F)V

    :cond_7
    :goto_3
    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mShouldHidden:Z

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDragMsg:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v2, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_8
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v2, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    invoke-virtual {v2, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    invoke-virtual {v7, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    invoke-virtual {v7, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    invoke-virtual {v7, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderArea:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v2, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    const/high16 v2, 0x41c00000    # 24.0f

    mul-float/2addr v2, v6

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneBg:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iput v2, v3, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    const/high16 v2, 0x43540000    # 212.0f

    mul-float/2addr v2, v6

    const/high16 v4, 0x42400000    # 48.0f

    mul-float/2addr v4, v6

    invoke-virtual {v3, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    invoke-virtual {v3, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    if-eqz v1, :cond_a

    :cond_9
    return-void

    :cond_a
    invoke-virtual {v7, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->findTag(I)Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    move-result-object v1

    invoke-virtual {v7, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-virtual {v1, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v1, v1

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v4, v1, v2, v11}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v2, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/high16 v5, -0x40800000    # -1.0f

    mul-float/2addr v2, v5

    const/high16 v5, 0x42f00000    # 120.0f

    mul-float/2addr v6, v5

    sub-float/2addr v2, v6

    iput v2, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-virtual {v7, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    new-instance v12, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;

    new-instance v13, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;

    const/4 v4, 0x5

    invoke-direct {v13, v4, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v14, 0x104

    move-object/from16 v17, v1

    move-object/from16 v16, v2

    invoke-direct/range {v12 .. v17}, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;-><init>(Landroidx/collection/internal/Lock;JLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v12, v10, v7}, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    const/4 v1, 0x2

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v2, v12, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderBg:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v1, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    invoke-virtual {v1, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    invoke-virtual {v3, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    invoke-virtual {v3, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v4, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    invoke-virtual {v4, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    new-instance v12, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v13, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;

    const/4 v5, 0x1

    invoke-direct {v13, v5, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;-><init>(ILjava/lang/Object;)V

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const-wide/16 v14, 0xa0

    const/16 v16, 0x0

    const/16 v18, 0x2

    invoke-direct/range {v12 .. v19}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Landroidx/collection/internal/Lock;JFFII)V

    filled-new-array {v1, v4, v3}, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object v0

    invoke-virtual {v12, v0, v10}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    const/4 v0, 0x3

    invoke-virtual {v2, v12, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final calculateMenuHeight(Lcom/motorola/camera/PreviewSize;)F
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->hasTrait(I)Z

    move-result v2

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDensity:F

    if-eqz v2, :cond_0

    const/high16 p0, 0x43930000    # 294.0f

    mul-float/2addr v3, p0

    return v3

    :cond_0
    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getModeCarouselY()F

    move-result v1

    mul-float/2addr v1, v3

    const/high16 v2, 0x42400000    # 48.0f

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    const/high16 v1, 0x41c00000    # 24.0f

    mul-float v4, v3, v1

    sub-float/2addr v2, v4

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenuY:F

    iget p0, p1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p0, p0

    sub-float/2addr p0, v2

    iget-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarHeight()F

    move-result p1

    add-float/2addr p1, v1

    mul-float/2addr p1, v3

    sub-float/2addr p0, p1

    return p0
.end method

.method public final drawFbo([F[F)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->drawFbo([F[F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->drawFbo([F[F)V

    return-void
.end method

.method public final endEditModeMenu()V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDragMsg:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneBg:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderBg:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    monitor-enter v0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget-boolean v5, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->isGone:Z

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTag:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    monitor-exit v0

    invoke-static {v2}, Lcom/motorola/camera/settings/ModeSettingsHelper;->saveSlider(Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mPhotoRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    monitor-enter v2

    :try_start_1
    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_2
    monitor-exit v2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mTouchTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->updateMenuArea()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MODE_MENU_EDIT_FINISH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    return-object p0
.end method

.method public final getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized initAllowedTextures()V
    .locals 14

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/settings/Setting;->getAllowedValues()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/settings/Setting;->getStringsForValues(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0}, Lcom/motorola/camera/settings/Setting;->getAllowedValues()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/motorola/camera/settings/Setting;->getAllowedAndroidIcons()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x34

    if-ne v6, v7, :cond_0

    goto :goto_1

    :cond_0
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mModesItemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v8, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils;->getModeText(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;IZ)Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    move-result-object v9

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v7 .. v13}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;IZZZ)V

    const/4 v6, -0x1

    iput v6, v7, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mUnSelectedColor:I

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v6

    iget v6, v6, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryMain:I

    iput v6, v7, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mSelectedColor:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v7, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTag:I

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mModesItemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v6, v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v1, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;

    const/16 v2, 0x8

    invoke-direct {v1, v2, p0, v3}, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final limitMovePos()V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    iget v4, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v3, v3

    cmpg-float v4, v4, v3

    if-gez v4, :cond_0

    iput v3, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget v1, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float p0, p0

    cmpl-float v1, v1, p0

    if-lez v1, :cond_1

    iput p0, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_1
    return-void
.end method

.method public final declared-synchronized loadTexture()V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mShowGlowTex:Z

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTouchBehavior()Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    move-result-object v0

    const/16 v2, 0x12c

    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mLongPressTimeout:I

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->onMenuListener:Lcom/google/android/gms/tasks/zzb;

    iput-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mClickListener:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture$OnItemClickListener;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const-string v6, ""

    const/16 v0, 0xb

    int-to-float v7, v0

    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Ljava/lang/String;FII)V

    iput-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDragMsg:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDragMsg:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDragMsg:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneBg:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    monitor-enter v0

    monitor-exit v0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTouchBehavior()Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    move-result-object v0

    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mLongPressTimeout:I

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mRotateAnim:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderArea:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    monitor-enter v0

    monitor-exit v0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->onMenuListener:Lcom/google/android/gms/tasks/zzb;

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mClickListener:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture$OnItemClickListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onDrag(ZLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/motorola/camera/ui/widgets/gl/Vector3F;JJZ)V
    .locals 10

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v2, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->LIST_LONG_PRESS:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->MENU_TOUCH_DOWN:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v1, p3, Landroid/graphics/PointF;->x:F

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v1, v2

    iput v1, p3, Landroid/graphics/PointF;->x:F

    iget v1, p3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v2

    iput v1, p3, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    move-wide/from16 v7, p7

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->onDrag(ZLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/motorola/camera/ui/widgets/gl/Vector3F;JJZ)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->SLIDER_TOUCH_DOWN:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->cancelTouch()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    move-wide/from16 v7, p7

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->onDrag(ZLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/motorola/camera/ui/widgets/gl/Vector3F;JJZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onDraw([F[F)V
    .locals 12

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v1, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderBg:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v1, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderArea:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v1, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDragMsg:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v1, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneBg:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v1, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->CELL_MOVING:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTexSlider:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v7, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mBgTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->clickPos:Landroid/graphics/PointF;

    iget-object v10, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v11, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mModeDotTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-direct/range {v3 .. v11}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;Landroid/graphics/PointF;Lcom/motorola/camera/utility/Flags;Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;)V

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->setDisplayOrientation(I)V

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->SHADOW:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    iget-object v1, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->movePoint:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v3, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mTouchTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->movePoint:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v0, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_2
    return-void
.end method

.method public final onPreDraw([F[F)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->onPreDraw([F[F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->onPreDraw([F[F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    return-void
.end method

.method public final onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTouchBehavior()Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mFlags:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v0, v4, :cond_23

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_21

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->MENU_TOUCH_DOWN:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v4, 0x42000000    # 32.0f

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->LIST_LONG_PRESS:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->firstPoint:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v6, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v6, v0

    iget v0, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr v0, p1

    iget p1, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    sub-float/2addr p1, v5

    mul-float/2addr v6, v6

    mul-float/2addr v0, v0

    add-float/2addr v0, v6

    mul-float/2addr p1, p1

    add-float/2addr p1, v0

    float-to-double v5, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float p1, v5

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDensity:F

    mul-float/2addr v0, v4

    cmpl-float p1, p1, v0

    if-lez p1, :cond_33

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->cancelTouch()V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return v1

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->SLIDER_TOUCH_DOWN:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->LIST_LONG_PRESS:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mLastPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v4

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDragBehavior:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$2;

    new-instance v6, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    invoke-virtual {v4, v6, v0, v2, v7}, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->drag(Landroid/graphics/PointF;FZLcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mLastPosition:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v0, v4, v6}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_e

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->DONE_TOUCH_DOWN:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_f

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->LIST_LONG_PRESS:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->CELL_MOVING:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->SHADOW:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v6, v3}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->updateShadowTex()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTag:I

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->canRemove(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderBg:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_12

    :cond_6
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget-object v6, v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->clickPos:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget-object v8, v7, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->clickPos:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v8

    invoke-direct {v0, v3, v6, v5}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->movePoint:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v0, v7, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mCellWidth:F

    const v6, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v6

    add-float v6, v0, v3

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v7, v7, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v8, v7

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    cmpl-float v6, v6, v8

    const/4 v8, 0x4

    const/high16 v10, 0x40a00000    # 5.0f

    if-lez v6, :cond_7

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDensity:F

    mul-float/2addr v6, v10

    sub-float/2addr v3, v6

    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->limitMovePos()V

    goto :goto_1

    :cond_7
    sub-float/2addr v3, v0

    neg-int v0, v7

    int-to-float v0, v0

    mul-float/2addr v0, v9

    cmpg-float v0, v3, v0

    if-gez v0, :cond_8

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDensity:F

    mul-float/2addr v6, v10

    add-float/2addr v6, v3

    iput v6, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->limitMovePos()V

    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->movePoint:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderBg:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v3, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDensity:F

    mul-float/2addr v3, v4

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v3, v3, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getMode()Lcom/motorola/camera/ui/layoutmanager/ModeValue;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    cmpl-float v0, v0, v4

    if-lez v0, :cond_15

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTag:I

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->canRemove(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->SLIDER_BG:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->isAnimation:Z

    if-nez v4, :cond_1f

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->setDisplayOrientation(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->containCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    monitor-enter v0

    :try_start_0
    iget-object v7, v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget-boolean v9, v9, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->isAnimation:Z

    if-eqz v9, :cond_9

    const-string v4, "ModeLayoutTexture"

    const-string/jumbo v5, "remove cell is animating."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    move v0, v1

    goto/16 :goto_7

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_a
    :try_start_1
    iget v7, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mCellWidth:F

    invoke-virtual {v4, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v9

    invoke-virtual {v0, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v10

    iget v9, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v10, v10, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v9, v10

    cmpg-float v5, v9, v5

    if-gez v5, :cond_e

    iget-object v5, v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    move v9, v1

    move v10, v2

    :goto_2
    if-ltz v5, :cond_12

    iget-object v11, v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v11, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v11, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    if-eqz v10, :cond_b

    goto :goto_5

    :cond_b
    move v9, v2

    goto :goto_3

    :cond_c
    if-eqz v9, :cond_d

    invoke-virtual {v11, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v10

    new-instance v12, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v12, v10}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget v13, v12, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v13, v7

    iput v13, v12, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-virtual {v0, v11, v10, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->animationMove(Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_d
    move v10, v1

    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_e
    iget-object v5, v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v9, v1

    move v6, v2

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v10, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    if-eqz v6, :cond_f

    :goto_5
    move v9, v2

    goto :goto_6

    :cond_f
    move v9, v2

    goto :goto_4

    :cond_10
    if-eqz v9, :cond_11

    invoke-virtual {v10, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v6

    new-instance v11, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v11, v6}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget v12, v11, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v12, v7

    iput v12, v11, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-virtual {v0, v10, v6, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->animationMove(Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_11
    move v6, v1

    goto :goto_4

    :cond_12
    :goto_6
    if-eqz v9, :cond_13

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->removeCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;)V

    :cond_13
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    move v0, v2

    :goto_7
    if-nez v0, :cond_14

    goto/16 :goto_f

    :goto_8
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_14
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget v3, v3, Lcom/motorola/camera/ui/layoutmanager/ModeValue;->LEFT:I

    invoke-virtual {v0, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->changeToSliderBg(IZ)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mTouchTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->containCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mPhotoRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v1, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->addCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->updateMenuArea()V

    goto/16 :goto_d

    :cond_15
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->SLIDER_BG:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget-boolean v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->isAnimation:Z

    if-eqz v0, :cond_16

    const-string v0, "ModeMenuTexture"

    const-string v3, "move cell is animating."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    const/16 v3, 0xb4

    if-ne v0, v3, :cond_17

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->setDisplayOrientation(I)V

    goto :goto_9

    :cond_17
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->setDisplayOrientation(I)V

    :goto_9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->changeToSliderBg(IZ)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mTouchTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->containCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mPhotoRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    monitor-enter v3

    :try_start_3
    invoke-virtual {v4, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    move v1, v2

    goto :goto_a

    :cond_19
    if-eqz v1, :cond_18

    invoke-virtual {v6, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v7

    invoke-virtual {v3, v6, v7, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->animationMove(Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    move-object v5, v7

    goto :goto_a

    :catchall_1
    move-exception p0

    goto :goto_b

    :cond_1a
    if-eqz v1, :cond_1b

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->removeCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;)V

    :cond_1b
    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v3

    goto :goto_c

    :goto_b
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :cond_1c
    :goto_c
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->containCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mStop:Lcom/motorola/camera/mcf/Mcf$8;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->clickPos:Landroid/graphics/PointF;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    invoke-virtual {v0, v1, p1, v3, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->updateSliderCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;Landroid/view/MotionEvent;Landroid/graphics/PointF;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V

    return v2

    :cond_1d
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->containCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_d

    :cond_1e
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "must add!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    :goto_d
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mStop:Lcom/motorola/camera/mcf/Mcf$8;

    if-nez v0, :cond_20

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$8;

    invoke-direct {v0, p0}, Lcom/motorola/camera/mcf/Mcf$8;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mStop:Lcom/motorola/camera/mcf/Mcf$8;

    :cond_20
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mStop:Lcom/motorola/camera/mcf/Mcf$8;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, v0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mStop:Lcom/motorola/camera/mcf/Mcf$8;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mStop:Lcom/motorola/camera/mcf/Mcf$8;

    const-wide/16 v3, 0xa

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return v2

    :cond_21
    :goto_e
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mOnDownHandled:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mOnDownCoords:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mOnDownCoords:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x41200000    # 10.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_22

    goto :goto_f

    :cond_22
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mOnDownHandled:Z

    return v1

    :cond_23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_24

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_2d

    :cond_24
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->SLIDER_TOUCH_DOWN:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mLastPosition:Landroid/graphics/PointF;

    if-eqz v0, :cond_25

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mLastPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v4

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDragBehavior:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$2;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mOnDownOrigin:Landroid/graphics/PointF;

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    invoke-virtual {v4, v6, v0, v1, v7}, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->drag(Landroid/graphics/PointF;FZLcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    :cond_25
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->cancelTouch()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->LIST_LONG_PRESS:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    :goto_f
    return v2

    :cond_26
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->LIST_LONG_PRESS:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    if-eqz v8, :cond_27

    sget-object v8, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->CELL_MOVING:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    iget-object v9, v7, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v9, Ljava/util/Set;

    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_27

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->endEdit()V

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->editFinish()V

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mTouchTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v4, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;

    const/16 v6, 0x1d

    invoke-direct {v4, v6, p0}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    goto :goto_10

    :cond_27
    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    if-eqz v8, :cond_28

    iget-object v8, v7, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->endEdit()V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->endEditModeMenu()V

    goto :goto_10

    :cond_28
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    if-eqz v4, :cond_29

    iget-object v4, v7, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_29

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->endEdit()V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    :cond_29
    :goto_10
    invoke-virtual {v7}, Lcom/motorola/camera/utility/Flags;->clear()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    goto :goto_11

    :cond_2a
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v0}, Lcom/motorola/camera/utility/Flags;->isEmpty()Z

    :goto_11
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->MENU_TOUCH_DOWN:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    iget-object v4, v4, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p1}, Lcom/motorola/camera/utility/Flags;->clear()V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->updateSelected$1()V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneBg:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2b

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->cancelTouch()V

    :cond_2b
    return v0

    :cond_2c
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->DONE_TOUCH_DOWN:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p1}, Lcom/motorola/camera/utility/Flags;->clear()V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneBg:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->buttonBackground:I

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->buttonTextUnSelected:I

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->endEditModeMenu()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->playHaptic(I)V

    return v2

    :cond_2d
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_2e

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mOnDownHandled:Z

    if-eqz v0, :cond_33

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_33

    :cond_2e
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneBg:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2f

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneBg:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->buttonBackgroundSelected:I

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->buttonTextSelected:I

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextColor(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p1}, Lcom/motorola/camera/utility/Flags;->clear()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->DONE_TOUCH_DOWN:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    return v2

    :cond_2f
    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_30

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {v3, v4, v6, v5}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->firstPoint:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {v3, v4, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mLastPosition:Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {v3, v4, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mOnDownOrigin:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v3}, Lcom/motorola/camera/utility/Flags;->clear()V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->SLIDER_TOUCH_DOWN:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    :cond_30
    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_31

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {v3, v4, v6, v5}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->firstPoint:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v3}, Lcom/motorola/camera/utility/Flags;->clear()V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->MENU_TOUCH_DOWN:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    :cond_31
    if-eqz v0, :cond_32

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_32

    move v1, v2

    :cond_32
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mOnDownHandled:Z

    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v1, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mOnDownCoords:Landroid/graphics/PointF;

    return v0

    :cond_33
    :goto_12
    return v1
.end method

.method public final rotateLayout(Lcom/motorola/camera/PreviewSize;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDensity:F

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v4, v1}, Lcom/motorola/camera/PreviewSize;->set(Lcom/motorola/camera/PreviewSize;)V

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    sget-boolean v6, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    iget-object v6, v5, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v6, v6, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v6}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getMode()Lcom/motorola/camera/ui/layoutmanager/ModeValue;

    move-result-object v6

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mPhotoRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget v6, v6, Lcom/motorola/camera/ui/layoutmanager/ModeValue;->HEIGHT:I

    iput v6, v10, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mFixedHeight:I

    iget-object v6, v5, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v6, v6, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v6}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v6

    const/16 v10, 0x20

    invoke-virtual {v6, v10}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->hasTrait(I)Z

    move-result v6

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mPhotoRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    if-eqz v6, :cond_1

    move v6, v7

    goto :goto_0

    :cond_1
    const/4 v6, 0x3

    :goto_0
    iput v6, v10, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->maxCol:I

    iget-object v6, v5, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v6, v6, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v6}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v6

    const/16 v10, 0x10

    invoke-virtual {v6, v10}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->hasTrait(I)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mHeaderRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget v10, v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mMaxFixedHeight:F

    const/high16 v11, 0x41a00000    # 20.0f

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_3

    const/16 v10, 0x14

    iput v10, v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mFixedHeight:I

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFooterRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iput v10, v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mFixedHeight:I

    goto :goto_1

    :cond_2
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mHeaderRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget v10, v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mMaxFixedHeight:F

    cmpl-float v10, v10, v9

    if-eqz v10, :cond_3

    iput v8, v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mFixedHeight:I

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFooterRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    const/16 v10, 0x74

    iput v10, v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mFixedHeight:I

    :cond_3
    :goto_1
    iput-boolean v8, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mRotateAnim:Z

    move/from16 v6, p2

    invoke-virtual {v0, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->setDisplayOrientation(I)V

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    invoke-virtual/range {p0 .. p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->calculateMenuHeight(Lcom/motorola/camera/PreviewSize;)F

    move-result v8

    iget v10, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v10, v10

    new-instance v11, Lcom/motorola/camera/utility/Error;

    float-to-int v10, v10

    float-to-int v12, v8

    invoke-direct {v11, v6, v10, v12}, Lcom/motorola/camera/utility/Error;-><init>(III)V

    iput-object v11, v3, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mLayoutBounds:Lcom/motorola/camera/utility/Error;

    iput-boolean v6, v3, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mResizeFbo:Z

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->doLayout$1()V

    iget-object v10, v3, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    const/high16 v11, 0x41f00000    # 30.0f

    iget v13, v3, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mDensity:F

    mul-float/2addr v13, v11

    add-float/2addr v13, v8

    iget-object v8, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v11, 0x0

    const v14, 0x7f7fffff    # Float.MAX_VALUE

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    const/high16 v16, 0x40000000    # 2.0f

    if-eqz v15, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-boolean v9, v15, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->isGone:Z

    iget-object v15, v15, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    if-nez v9, :cond_5

    invoke-virtual {v15}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v15}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    instance-of v6, v15, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    if-eqz v6, :cond_4

    invoke-virtual {v15, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v6

    iget v6, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    div-float v17, v10, v16

    sub-float v6, v6, v17

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float/2addr v6, v13

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v17, v14, v6

    if-lez v17, :cond_4

    move v14, v6

    move-object v11, v15

    :cond_4
    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    const/4 v6, 0x1

    const/4 v9, 0x0

    goto :goto_2

    :cond_6
    if-eqz v11, :cond_7

    invoke-virtual {v11, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v6

    iget v6, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    div-float v10, v10, v16

    sub-float/2addr v6, v10

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float/2addr v6, v13

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    :goto_4
    iget-object v7, v5, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v7, v7, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v7}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getMode()Lcom/motorola/camera/ui/layoutmanager/ModeValue;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, v7, Lcom/motorola/camera/ui/layoutmanager/ModeValue;->HEIGHT:I

    int-to-float v7, v7

    mul-float/2addr v7, v2

    cmpg-float v6, v6, v7

    if-gez v6, :cond_8

    iget v6, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v6, v6

    new-instance v7, Lcom/motorola/camera/utility/Error;

    float-to-int v6, v6

    const/4 v8, 0x1

    invoke-direct {v7, v8, v6, v12}, Lcom/motorola/camera/utility/Error;-><init>(III)V

    iput-object v7, v3, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mLayoutBounds:Lcom/motorola/camera/utility/Error;

    iput-boolean v8, v3, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mResizeFbo:Z

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->doLayout$1()V

    :cond_8
    iget-object v6, v5, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v6, v6, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v6}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v6

    const/16 v7, 0x30

    invoke-virtual {v6, v7}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->hasTrait(I)Z

    move-result v6

    if-eqz v6, :cond_9

    iget v6, v1, Lcom/motorola/camera/PreviewSize;->height:I

    neg-int v6, v6

    int-to-float v6, v6

    const/high16 v7, 0x40800000    # 4.0f

    div-float/2addr v6, v7

    const/high16 v7, 0x428e0000    # 71.0f

    mul-float/2addr v7, v2

    add-float/2addr v7, v6

    :goto_5
    const/4 v6, 0x0

    goto :goto_6

    :cond_9
    iget v6, v1, Lcom/motorola/camera/PreviewSize;->height:I

    iget-object v7, v3, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mLayoutBounds:Lcom/motorola/camera/utility/Error;

    iget v7, v7, Lcom/motorola/camera/utility/Error;->mStorage:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    neg-float v6, v6

    iget v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenuY:F

    add-float/2addr v7, v6

    goto :goto_5

    :goto_6
    invoke-virtual {v3, v6, v7, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setPostTranslation(FFF)V

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    neg-int v1, v1

    int-to-float v1, v1

    div-float v1, v1, v16

    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v5, v5, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v5}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getModeCarouselY()F

    move-result v5

    const/high16 v6, 0x42800000    # 64.0f

    add-float/2addr v5, v6

    mul-float/2addr v5, v2

    add-float/2addr v5, v1

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDragMsg:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget v1, v4, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDragMsg:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    const/4 v8, 0x1

    iput-boolean v8, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mRotateAnim:Z

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->updateSliderPos()V

    :cond_a
    return-void
.end method

.method public final setAlpha(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setAlpha(F)V

    return-void
.end method

.method public final setClickable(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    return-void
.end method

.method public final setDisplayOrientation(I)V
    .locals 3

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    if-eqz p1, :cond_0

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->setDisplayOrientation(I)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDragMsg:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    int-to-float v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDragMsg:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setDisplayOrientation(I)V

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->setDisplayOrientation(I)V

    return-void
.end method

.method public final setDraggable(Z)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    return-void
.end method

.method public final declared-synchronized setVisibility$3(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized unloadTexture()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDragMsg:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderArea:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneBg:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mModesItemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->unloadTexture()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mModesItemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mLoaded:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mCellAll:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->unloadTexture()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mCellAll:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final updateMenuArea()V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mPhotoRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    monitor-enter v0

    :try_start_0
    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->isGone:Z

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    xor-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->doLayout$1()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final updateSliderPos()V
    .locals 10

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getModeCarouselY()F

    move-result v1

    const/high16 v2, 0x42480000    # 50.0f

    sub-float/2addr v1, v2

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v3, v3, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTrait()I

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    const/high16 v3, 0x42700000    # 60.0f

    add-float/2addr v1, v3

    :cond_0
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v4, v3, Lcom/motorola/camera/PreviewSize;->height:I

    neg-int v4, v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDensity:F

    mul-float v7, v1, v6

    add-float/2addr v7, v4

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v8, v8, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v8}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getModeCarouselY()F

    move-result v8

    mul-float/2addr v8, v6

    div-float/2addr v8, v5

    add-float/2addr v8, v4

    mul-float v4, v6, v5

    sub-float/2addr v8, v4

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    const/4 v9, 0x0

    invoke-virtual {v4, v9, v7, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setPostTranslation(FFF)V

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneBg:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v4, v9, v8, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDoneText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v4, v9, v8, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    add-float/2addr v1, v2

    mul-float/2addr v1, v6

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarHeight()F

    move-result v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    mul-float/2addr v0, v6

    add-float/2addr v0, v1

    iget v1, v3, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    mul-float/2addr v0, v2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderBg:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p0, v1, v0, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    iget v1, v3, Lcom/motorola/camera/PreviewSize;->height:I

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    add-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v9, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    return-void
.end method

.method public final updateTalkback()V
    .locals 13

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isTalkbackLayoutEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mPhotoRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->UPDATE_MODE_MENU:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->calculateMenuHeight(Lcom/motorola/camera/PreviewSize;)F

    move-result v5

    iget v4, v4, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v4, v4

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v4, v6

    mul-float/2addr v5, v6

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget v8, v8, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mCellWidth:F

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget v7, v7, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mCellHeight:F

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v10

    iget v11, v10, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v11, v4

    mul-float v12, v8, v6

    sub-float/2addr v11, v12

    iget v10, v10, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float v10, v5, v10

    mul-float v12, v7, v6

    sub-float/2addr v10, v12

    float-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    float-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, v9, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v9, v9, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v6, "MENU_TEXT"

    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v3, "MENU_LEFT"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "MENU_TOP"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "LAYOUT_WIDTH"

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v4, v2

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "LAYOUT_HEIGHT"

    mul-float/2addr v5, v2

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "LAYOUT_Y"

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenuY:F

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p0, "MENU_CELL_WIDTH"

    invoke-virtual {v0, p0, v8}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p0, "MENU_CELL_HEIGHT"

    invoke-virtual {v0, p0, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->UPDATE_MODE_MENU:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void
.end method
