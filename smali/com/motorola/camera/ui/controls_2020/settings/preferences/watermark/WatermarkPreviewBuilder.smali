.class public final Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 ,2\u00020\u0001:\u0001,B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0002J\u000e\u0010$\u001a\u00020!2\u0006\u0010%\u001a\u00020&J\u0006\u0010\'\u001a\u00020!J\u000e\u0010(\u001a\u00020!2\u0006\u0010)\u001a\u00020\u0018J\u0018\u0010*\u001a\u0004\u0018\u00010\u00052\u0006\u0010%\u001a\u00020&2\u0006\u0010\"\u001a\u00020#J\u0006\u0010+\u001a\u00020!R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006-"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;",
        "",
        "<init>",
        "()V",
        "mPreviewTemplate",
        "Landroid/graphics/Bitmap;",
        "mResource",
        "Landroid/content/res/Resources;",
        "mLineColor",
        "",
        "mPreviewWidth",
        "mPreviewHeight",
        "mWatermarkWidth",
        "mWatermarkHeight",
        "mBackgroundColor",
        "mPreviewBorder",
        "mFrameStrokeWidth",
        "mFrameBorderOffset",
        "mFrameHorizontalLineLength",
        "mFrameVerticalLineLength",
        "mIsRtl",
        "",
        "useStroke",
        "mProductName",
        "",
        "mSignText",
        "commonAttributes",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkCommonAttributes;",
        "frameAttributes",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkFrameAttributes;",
        "helper",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;",
        "initAttributes",
        "",
        "style",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;",
        "preload",
        "context",
        "Landroid/content/Context;",
        "updateSettingsState",
        "setSignText",
        "signText",
        "createPreviewBitmap",
        "unload",
        "Companion",
        "MotCamera5-v10.0.47.24_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder$Companion;

.field private static final DUMP_WATERMARK_TO_FILE:Z = false

.field private static final TAG:Ljava/lang/String; = "WatermarkPreviewBuilder"

.field private static final WATERMARK:Ljava/lang/String; = "Watermark"

.field private static final instance$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy;"
        }
    .end annotation
.end field


# instance fields
.field private commonAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkCommonAttributes;

.field private frameAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkFrameAttributes;

.field private final helper:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;

.field private mBackgroundColor:I

.field private mFrameBorderOffset:I

.field private mFrameHorizontalLineLength:I

.field private mFrameStrokeWidth:I

.field private mFrameVerticalLineLength:I

.field private mIsRtl:Z

.field private final mLineColor:I

.field private mPreviewBorder:I

.field private mPreviewHeight:I

.field private mPreviewTemplate:Landroid/graphics/Bitmap;

.field private mPreviewWidth:I

.field private final mProductName:Ljava/lang/String;

.field private final mResource:Landroid/content/res/Resources;

.field private mSignText:Ljava/lang/String;

.field private mWatermarkHeight:I

.field private mWatermarkWidth:I

.field private useStroke:Z


# direct methods
.method public static synthetic $r8$lambda$KM_6WEBMXP6rfuLGbwCrLP9Wf_8()Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;
    .locals 1

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->instance_delegate$lambda$5()Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->Companion:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->$stable:I

    new-instance v0, Lcom/motorola/camera/utility/ForegroundRunner$$ExternalSyntheticLambda0;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/motorola/camera/utility/ForegroundRunner$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->instance$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "getResources(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f06049a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->mLineColor:I

    invoke-static {}, Lcom/motorola/camera/Util;->getProductDisplay()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/watermark/WatermarkEditor;->convertProductName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "convertProductName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->mProductName:Ljava/lang/String;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;

    invoke-direct {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->helper:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;

    return-void
.end method

.method public static final synthetic access$getInstance$delegate$cp()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->instance$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method private final initAttributes(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->mIsRtl:Z

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider;->getFrameAttributes()Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkFrameAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->frameAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkFrameAttributes;

    invoke-static {p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider;->getCommonAttributes(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkCommonAttributes;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->commonAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkCommonAttributes;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkCommonAttributes;->getPreviewWidth()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->mPreviewWidth:I

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkCommonAttributes;->getPreviewHeight()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->mPreviewHeight:I

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkCommonAttributes;->getWatermarkWidth()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->mWatermarkWidth:I

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkCommonAttributes;->getWatermarkHeight()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->mWatermarkHeight:I

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkCommonAttributes;->getColor()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->mBackgroundColor:I

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkCommonAttributes;->getPreviewBorder()I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->mPreviewBorder:I

    :cond_0
    return-void
.end method

.method private static final instance_delegate$lambda$5()Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;
    .locals 1

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;

    invoke-direct {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;-><init>()V

    return-object v0
.end method

.method public static final isBitmapInvalid(Landroid/graphics/Bitmap;)Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->Companion:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder$Companion;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder$Companion;->isBitmapInvalid(Landroid/graphics/Bitmap;)Z

    move-result p0

    return p0
.end method

.method public static final releaseBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->Companion:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder$Companion;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder$Companion;->releaseBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public final createPreviewBitmap(Landroid/content/Context;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "context"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "style"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->getWatermarkOption(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    move-result-object v3

    invoke-direct {v0, v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->initAttributes(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)V

    sget-object v4, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->Companion:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder$Companion;

    iget-object v5, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->mPreviewTemplate:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder$Companion;->isBitmapInvalid(Landroid/graphics/Bitmap;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    return-object v6

    :cond_0
    iget-object v5, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->mPreviewTemplate:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v7, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->mPreviewTemplate:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_1

    const/4 v8, 0x1

    invoke-virtual {v7, v5, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, v6

    :goto_0
    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder$Companion;->isBitmapInvalid(Landroid/graphics/Bitmap;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v6

    :cond_2
    instance-of v4, v2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Frame;

    if-eqz v4, :cond_4

    iget-object v7, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->frameAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkFrameAttributes;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkFrameAttributes;->getLineWidth()I

    move-result v8

    iput v8, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->mFrameStrokeWidth:I

    invoke-virtual {v7}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkFrameAttributes;->getLinePadding()I

    move-result v8

    iput v8, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->mFrameBorderOffset:I

    invoke-virtual {v7}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkFrameAttributes;->getLineHorizontalLength()I

    move-result v8

    iput v8, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->mFrameHorizontalLineLength:I

    invoke-virtual {v7}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkFrameAttributes;->getLineVerticalLength()I

    move-result v7

    iput v7, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->mFrameVerticalLineLength:I

    :cond_3
    iget v7, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->mBackgroundColor:I

    goto :goto_1

    :cond_4
    instance-of v7, v2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Border;

    if-eqz v7, :cond_5

    const/4 v7, -0x1

    goto :goto_1

    :cond_5
    iget v7, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->mBackgroundColor:I

    :goto_1
    sget-object v8, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;

    iget v9, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->mWatermarkWidth:I

    iget v10, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->mWatermarkHeight:I

    invoke-virtual {v8, v9, v10, v7}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->createBackgroundBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v9, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;

    iget-object v10, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->mProductName:Ljava/lang/String;

    iget-object v11, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->mSignText:Ljava/lang/String;

    if-nez v11, :cond_6

    const-string v11, ""

    :cond_6
    const-wide/16 v12, 0x0

    move-wide v13, v12

    invoke-static {v13, v14}, Lcom/motorola/camera/watermark/WatermarkEditor;->getDateString(J)Ljava/lang/String;

    move-result-object v12

    const-string v15, "getDateString(...)"

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v14}, Lcom/motorola/camera/watermark/WatermarkEditor;->getTimeString(J)Ljava/lang/String;

    move-result-object v13

    const-string v14, "getTimeString(...)"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v14, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->mResource:Landroid/content/res/Resources;

    const v15, 0x7f120690

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "getString(...)"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v15, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->mIsRtl:Z

    iget-boolean v6, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->useStroke:Z

    move/from16 v16, v6

    invoke-direct/range {v9 .. v16}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iget-object v6, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->helper:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;

    invoke-virtual {v6, v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->initPreviewAttributes(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)V

    instance-of v6, v2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Basic;

    if-eqz v6, :cond_7

    invoke-virtual {v3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getDeviceWatermarkEnabled()Z

    move-result v10

    invoke-virtual {v3, v10}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->setSignatureEnabled(Z)V

    :cond_7
    iget-object v10, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->helper:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;

    invoke-virtual {v10, v1, v7, v3, v9}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->addWatermarksToBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;)Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v1, 0x0

    if-eq v9, v7, :cond_8

    new-array v3, v1, [Landroid/graphics/Bitmap;

    invoke-static {v7, v3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->recycleSafely(Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;)V

    :cond_8
    if-eqz v4, :cond_9

    iget v10, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->mFrameStrokeWidth:I

    iget v11, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->mLineColor:I

    iget v3, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->mFrameBorderOffset:I

    int-to-float v12, v3

    iget v3, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->mFrameHorizontalLineLength:I

    int-to-float v13, v3

    iget v3, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->mFrameVerticalLineLength:I

    int-to-float v14, v3

    invoke-virtual/range {v8 .. v14}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->addWireFrame(Landroid/graphics/Bitmap;IIFFF)Landroid/graphics/Bitmap;

    :cond_9
    if-eqz v5, :cond_11

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v9, v3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->scaleBitmapToWidth(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eq v3, v9, :cond_a

    new-array v1, v1, [Landroid/graphics/Bitmap;

    invoke-static {v9, v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->recycleSafely(Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;)V

    :cond_a
    instance-of v1, v2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Label;

    if-eqz v1, :cond_b

    invoke-static {v5, v3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->combineBitmapsAttachBottom(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    :cond_b
    instance-of v1, v2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Border;

    if-eqz v1, :cond_c

    iget v0, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->mPreviewBorder:I

    const/4 v1, -0x1

    invoke-static {v5, v3, v0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->attachWatermarkBottomWithBorders(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    :cond_c
    if-nez v6, :cond_e

    if-eqz v4, :cond_d

    goto :goto_2

    :cond_d
    new-instance v0, Lcom/google/gson/JsonParseException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_e
    :goto_2
    invoke-virtual {v8, v5, v3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->combineBitmapsAlignBottom(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_3
    if-eq v0, v5, :cond_f

    filled-new-array {v0}, [Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->recycleSafely(Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;)V

    :cond_f
    if-eq v0, v3, :cond_10

    filled-new-array {v0}, [Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->recycleSafely(Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;)V

    :cond_10
    return-object v0

    :cond_11
    return-object v5
.end method

.method public final preload(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Basic;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Basic;

    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->initAttributes(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)V

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->mPreviewWidth:I

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->mPreviewHeight:I

    const v3, 0x7f0803a1

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->drawableToBitmap(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->mPreviewTemplate:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final setSignText(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "signText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->mSignText:Ljava/lang/String;

    return-void
.end method

.method public final unload()V
    .locals 2

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->Companion:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder$Companion;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->mPreviewTemplate:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder$Companion;->releaseBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->mPreviewTemplate:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final updateSettingsState()V
    .locals 1

    invoke-static {}, Lcom/motorola/camera/watermark/WatermarkEditor;->getSignatureText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkPreviewBuilder;->mSignText:Ljava/lang/String;

    return-void
.end method
