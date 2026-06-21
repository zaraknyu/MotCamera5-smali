.class public final Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u0000 O2\u00020\u0001:\u0001OB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u001e\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019J(\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0002JT\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020 0\u001e2\u0006\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020#2\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\u00052\u0006\u0010)\u001a\u00020#2\u0006\u0010*\u001a\u00020#H\u0002JL\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020 0\u001e2\u0006\u0010,\u001a\u00020-2\u0006\u0010!\u001a\u00020 2\u0006\u0010(\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020#2\u0006\u0010.\u001a\u00020#2\u0006\u0010/\u001a\u00020#H\u0002J&\u00100\u001a\u00020 2\u0006\u0010,\u001a\u00020-2\u0006\u0010!\u001a\u00020 2\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u000204J$\u00105\u001a\u000e\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020#062\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u000204H\u0002J4\u00107\u001a\u00020 2\u0006\u0010!\u001a\u00020 2\u0006\u00103\u001a\u0002042\u0012\u00108\u001a\u000e\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020#062\u0006\u00109\u001a\u00020:H\u0002JH\u0010;\u001a\u00020 2\u0006\u0010!\u001a\u00020 2\u0012\u0010<\u001a\u000e\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020\'062\u0006\u00103\u001a\u0002042\u0012\u00108\u001a\u000e\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020#062\u0006\u00109\u001a\u00020:H\u0002J<\u0010=\u001a\u00020 2\u0006\u0010!\u001a\u00020 2\u0006\u00103\u001a\u0002042\u0006\u00101\u001a\u0002022\u0012\u00108\u001a\u000e\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020#062\u0006\u00109\u001a\u00020:H\u0002J0\u0010>\u001a\u00020 2\u0006\u0010,\u001a\u00020-2\u0006\u0010!\u001a\u00020 2\u0006\u00103\u001a\u0002042\u0006\u00101\u001a\u0002022\u0006\u00109\u001a\u00020:H\u0002Jm\u0010?\u001a\u00020 2\u0006\u0010!\u001a\u00020 2\u0006\u0010&\u001a\u00020\'2\u0008\u0010(\u001a\u0004\u0018\u00010\u00052\u0012\u00108\u001a\u000e\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020#062\u0006\u00109\u001a\u00020:2\u0006\u0010\"\u001a\u00020#2\u0008\u0010@\u001a\u0004\u0018\u00010#2\u0006\u0010.\u001a\u00020#2\u0006\u0010)\u001a\u00020#2\u0006\u0010*\u001a\u00020#H\u0002\u00a2\u0006\u0002\u0010AJJ\u0010B\u001a\u00020 2\u0006\u0010,\u001a\u00020-2\u0006\u0010!\u001a\u00020 2\u0008\u0010(\u001a\u0004\u0018\u00010C2\u0006\u00109\u001a\u00020:2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020#2\u0006\u0010.\u001a\u00020#2\u0006\u0010/\u001a\u00020#H\u0002J>\u0010D\u001a\u00020 2\u0006\u0010E\u001a\u00020 2\u0006\u0010F\u001a\u00020G2\u0006\u0010H\u001a\u00020\u00192\u0006\u0010I\u001a\u00020\u00172\u0006\u0010J\u001a\u00020\u00192\u0006\u0010K\u001a\u00020\u00192\u0006\u0010L\u001a\u00020#J\"\u0010M\u001a\u00020#2\u0006\u0010(\u001a\u00020\u000e2\u0012\u0010N\u001a\u000e\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020#06R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006P"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;",
        "",
        "<init>",
        "()V",
        "signatureAttributes",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;",
        "variantAttributes",
        "modelAttributes",
        "seriesAttributes",
        "brandAttributes",
        "dateAttributes",
        "timeAttributes",
        "shootingParamsAttributes",
        "lineAttributes",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;",
        "logoAttributes",
        "autographAttributes",
        "initPreviewAttributes",
        "",
        "style",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;",
        "initWatermarkAttributes",
        "sourceReference",
        "",
        "targetReference",
        "",
        "getElementAttributesAndScale",
        "element",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;",
        "addTextToBitmap",
        "Landroid/util/Pair;",
        "Landroid/graphics/Point;",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "needHorizontalOffset",
        "",
        "needVerticalOffset",
        "needMargin",
        "text",
        "",
        "attributes",
        "useTextWidthOffset",
        "useStroke",
        "addImageToBitmap",
        "context",
        "Landroid/content/Context;",
        "needMarginHorizontal",
        "useImageWidthOffset",
        "addWatermarksToBitmap",
        "options",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;",
        "content",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;",
        "buildNameEnabledMap",
        "",
        "drawSignatureWatermark",
        "nameEnabledMap",
        "anchorStore",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAnchorStore;",
        "drawProductNameWatermarks",
        "parsedName",
        "drawDateTimeWatermarks",
        "drawImageWatermarks",
        "drawTextWatermarkIfEnabled",
        "verticalOffsetOverride",
        "(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;Ljava/util/Map;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAnchorStore;ZLjava/lang/Boolean;ZZZ)Landroid/graphics/Bitmap;",
        "drawImageWatermarkIfEnabled",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkImageElementAttributes;",
        "drawWireframeLine",
        "wmBitmap",
        "wireframeAttributes",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkFrameAttributes;",
        "position",
        "previewHeight",
        "imageWidth",
        "orientation",
        "isSquareAspectRatio",
        "shouldApplyVerticalOffsetByAnchor",
        "enabledMap",
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

.field public static final BRAND:Ljava/lang/String; = "brand"

.field public static final Companion:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper$Companion;

.field public static final MODEL:Ljava/lang/String; = "model"

.field public static final SERIES:Ljava/lang/String; = "series"

.field public static final VARIANT:Ljava/lang/String; = "variant"


# instance fields
.field private autographAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

.field private brandAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

.field private dateAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

.field private lineAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

.field private logoAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

.field private modelAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

.field private seriesAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

.field private shootingParamsAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

.field private signatureAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

.field private timeAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

.field private variantAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->Companion:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final addImageToBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;ZZZZ)Landroid/util/Pair;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/graphics/Bitmap;",
            "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;",
            "ZZZZ)",
            "Landroid/util/Pair<",
            "Landroid/graphics/Point;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p3

    const-string v1, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.settings.preferences.watermark.WatermarkImageElementAttributes"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkImageElementAttributes;

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkImageElementAttributes;->getImageDrawable()I

    move-result v3

    move-object/from16 v4, p1

    invoke-virtual {v2, v4, v3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->loadDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkImageElementAttributes;->getImageWidth()I

    move-result v5

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkImageElementAttributes;->getImageHeight()I

    move-result v6

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->getLayoutType()I

    move-result v7

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->getPosition()I

    move-result v17

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->getPaddingHorizontal()I

    move-result v8

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->getPaddingVertical()I

    move-result v9

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->getPaddingHorizontalOffset()I

    move-result v12

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->getPaddingVerticalOffset()I

    move-result v13

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->getMarginHorizontal()I

    move-result v10

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->getMarginHorizontalOffset()I

    move-result v11

    move-object/from16 v3, p2

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, p6

    move/from16 v18, p7

    invoke-virtual/range {v2 .. v18}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->addDrawableToBitmap(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;IIIIIIIIIZZZIZ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private final addTextToBitmap(Landroid/graphics/Bitmap;ZZZLjava/lang/String;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;ZZ)Landroid/util/Pair;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "ZZZ",
            "Ljava/lang/String;",
            "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;",
            "ZZ)",
            "Landroid/util/Pair<",
            "Landroid/graphics/Point;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p6 .. p6}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->getLayoutType()I

    move-result v4

    invoke-virtual/range {p6 .. p6}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;->getFontSize()I

    move-result v5

    invoke-virtual/range {p6 .. p6}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;->getFontColor()I

    move-result v7

    invoke-virtual/range {p6 .. p6}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;->getFontStyle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p6 .. p6}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;->getFontAlpha()I

    move-result v8

    invoke-virtual/range {p6 .. p6}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;->getStrokeColor()I

    move-result v9

    invoke-virtual/range {p6 .. p6}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->getPaddingHorizontal()I

    move-result v10

    invoke-virtual/range {p6 .. p6}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->getPaddingVertical()I

    move-result v11

    invoke-virtual/range {p6 .. p6}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->getPosition()I

    move-result v16

    invoke-virtual/range {p6 .. p6}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->getPaddingVerticalOffset()I

    move-result v13

    invoke-virtual/range {p6 .. p6}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->getPaddingHorizontalOffset()I

    move-result v12

    invoke-virtual/range {p6 .. p6}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->getMarginHorizontal()I

    move-result v14

    invoke-virtual/range {p6 .. p6}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->getMarginHorizontalOffset()I

    move-result v15

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;

    move-object/from16 v2, p1

    move/from16 v17, p2

    move/from16 v18, p3

    move/from16 v19, p4

    move-object/from16 v3, p5

    move/from16 v20, p7

    move/from16 v21, p8

    invoke-virtual/range {v1 .. v21}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->addTextToBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;IILjava/lang/String;IIIIIIIIIIZZZZZ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private final buildNameEnabledMap(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;",
            "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getDeviceWatermarkEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    new-instance v0, Lkotlin/Pair;

    const-string v1, "Brand"

    invoke-direct {v0, v1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getDeviceWatermarkEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    new-instance v1, Lkotlin/Pair;

    const-string v2, "Series"

    invoke-direct {v1, v2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getDeviceWatermarkEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    new-instance v2, Lkotlin/Pair;

    const-string v3, "Model"

    invoke-direct {v2, v3, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getDeviceWatermarkEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    new-instance v3, Lkotlin/Pair;

    const-string v4, "Variant"

    invoke-direct {v3, v4, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getSignatureEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->getSignature()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    new-instance v4, Lkotlin/Pair;

    const-string p2, "Signature"

    invoke-direct {v4, p2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getDateEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    new-instance v5, Lkotlin/Pair;

    const-string p2, "Date"

    invoke-direct {v5, p2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getTimeEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    new-instance v6, Lkotlin/Pair;

    const-string p2, "Time"

    invoke-direct {v6, p2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getShootingParamsEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    new-instance v7, Lkotlin/Pair;

    const-string p1, "ShootingParams"

    invoke-direct {v7, p1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v0 .. v7}, [Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private final drawDateTimeWatermarks(Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;Ljava/util/Map;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAnchorStore;)Landroid/graphics/Bitmap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;",
            "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAnchorStore;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->isRtl()Z

    move-result v0

    const/4 v11, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getDateEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->getDate()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->dateAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    const/4 v9, 0x1

    invoke-virtual {p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->getUseStroke()Z

    move-result v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v10}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->drawTextWatermarkIfEnabled(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;Ljava/util/Map;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAnchorStore;ZLjava/lang/Boolean;ZZZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    move-object v1, p1

    goto :goto_1

    :cond_0
    move-object/from16 v5, p5

    goto :goto_0

    :goto_1
    invoke-virtual {p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getTimeEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getDateEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->timeAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    if-eqz p1, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->getHorizontalAnchor()Ljava/lang/String;

    move-result-object v11

    :cond_1
    invoke-virtual {v5, v11}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAnchorStore;->getMaxX(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->setMarginHorizontal(I)V

    :cond_2
    invoke-virtual {p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->getTime()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->timeAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    invoke-virtual {p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getDateEnabled()Z

    move-result p1

    xor-int/lit8 v6, p1, 0x1

    invoke-virtual {p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getDateEnabled()Z

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->getUseStroke()Z

    move-result v10

    const/4 v7, 0x0

    move-object v0, p0

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v10}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->drawTextWatermarkIfEnabled(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;Ljava/util/Map;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAnchorStore;ZLjava/lang/Boolean;ZZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1

    :cond_4
    invoke-virtual {p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getTimeEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->getTime()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->timeAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    const/4 v9, 0x0

    invoke-virtual {p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->getUseStroke()Z

    move-result v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v10}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->drawTextWatermarkIfEnabled(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;Ljava/util/Map;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAnchorStore;ZLjava/lang/Boolean;ZZZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_2
    move-object v1, p1

    goto :goto_3

    :cond_5
    move-object/from16 v5, p5

    goto :goto_2

    :goto_3
    invoke-virtual {p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getDateEnabled()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getTimeEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->dateAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    if-eqz p1, :cond_7

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->getHorizontalAnchor()Ljava/lang/String;

    move-result-object v11

    :cond_6
    invoke-virtual {v5, v11}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAnchorStore;->getMinX(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->setMarginHorizontal(I)V

    :cond_7
    invoke-virtual {p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->getDate()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->dateAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    invoke-virtual {p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getTimeEnabled()Z

    move-result p1

    xor-int/lit8 v6, p1, 0x1

    invoke-virtual {p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getTimeEnabled()Z

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->getUseStroke()Z

    move-result v10

    const/4 v7, 0x0

    move-object v0, p0

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v10}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->drawTextWatermarkIfEnabled(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;Ljava/util/Map;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAnchorStore;ZLjava/lang/Boolean;ZZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_8
    return-object v1
.end method

.method private final drawImageWatermarkIfEnabled(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkImageElementAttributes;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAnchorStore;ZZZZ)Landroid/graphics/Bitmap;
    .locals 8

    if-nez p3, :cond_0

    return-object p2

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->addImageToBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;ZZZZ)Landroid/util/Pair;

    move-result-object p0

    invoke-virtual {p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Landroid/graphics/Point;

    invoke-virtual {p4, p1, p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAnchorStore;->addPoint(Ljava/lang/String;Landroid/graphics/Point;)V

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string/jumbo p1, "second"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private final drawImageWatermarks(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAnchorStore;)Landroid/graphics/Bitmap;
    .locals 12

    move-object/from16 v4, p5

    invoke-virtual/range {p4 .. p4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getDateEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual/range {p4 .. p4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getTimeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual/range {p4 .. p4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getShootingParamsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v9, v0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :goto_2
    invoke-virtual/range {p4 .. p4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getLogoEnabled()Z

    move-result v0

    const-string v10, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.settings.preferences.watermark.WatermarkImageElementAttributes"

    const/4 v11, 0x0

    if-eqz v0, :cond_6

    if-eqz v9, :cond_6

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->lineAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

    if-eqz v0, :cond_6

    invoke-virtual {p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->lineAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->getHorizontalAnchor()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_2
    move-object v0, v11

    :goto_3
    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAnchorStore;->getMaxX(Ljava/lang/String;)I

    move-result v0

    goto :goto_5

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->lineAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->getHorizontalAnchor()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_4
    move-object v0, v11

    :goto_4
    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAnchorStore;->getMinX(Ljava/lang/String;)I

    move-result v0

    :goto_5
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->lineAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->setMarginHorizontal(I)V

    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->lineAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkImageElementAttributes;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->drawImageWatermarkIfEnabled(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkImageElementAttributes;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAnchorStore;ZZZZ)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_6
    move-object v2, p2

    invoke-virtual/range {p4 .. p4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getLogoEnabled()Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->logoAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

    if-eqz p2, :cond_b

    if-eqz v9, :cond_a

    invoke-virtual {p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->isRtl()Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->logoAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->getHorizontalAnchor()Ljava/lang/String;

    move-result-object v11

    :cond_7
    invoke-virtual {v4, v11}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAnchorStore;->getMaxX(Ljava/lang/String;)I

    move-result p2

    goto :goto_6

    :cond_8
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->logoAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->getHorizontalAnchor()Ljava/lang/String;

    move-result-object v11

    :cond_9
    invoke-virtual {v4, v11}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAnchorStore;->getMinX(Ljava/lang/String;)I

    move-result p2

    :goto_6
    iget-object p3, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->logoAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

    if-eqz p3, :cond_a

    invoke-virtual {p3, p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->setMarginHorizontal(I)V

    :cond_a
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->logoAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

    invoke-static {p2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p2

    check-cast v3, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkImageElementAttributes;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v7, v9

    invoke-direct/range {v0 .. v8}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->drawImageWatermarkIfEnabled(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkImageElementAttributes;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAnchorStore;ZZZZ)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_b
    invoke-virtual/range {p4 .. p4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getAutographEnabled()Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->autographAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

    invoke-static {p2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p2

    check-cast v3, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkImageElementAttributes;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v4, p5

    invoke-direct/range {v0 .. v8}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->drawImageWatermarkIfEnabled(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkImageElementAttributes;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAnchorStore;ZZZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_c
    return-object v2
.end method

.method private final drawProductNameWatermarks(Landroid/graphics/Bitmap;Ljava/util/Map;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;Ljava/util/Map;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAnchorStore;)Landroid/graphics/Bitmap;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAnchorStore;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v5, p5

    invoke-virtual/range {p3 .. p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->isRtl()Z

    move-result v11

    const-string v12, "brand"

    const-string/jumbo v13, "series"

    const-string v14, "model"

    const-string/jumbo v15, "variant"

    if-eqz v11, :cond_0

    filled-new-array {v15, v14, v13, v12}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    filled-new-array {v12, v13, v14, v15}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v1, p1

    move/from16 v2, v17

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    add-int/lit8 v18, v2, 0x1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_1

    goto/16 :goto_9

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->variantAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    goto :goto_3

    :sswitch_1
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->modelAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    goto :goto_3

    :sswitch_2
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->brandAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    goto :goto_3

    :sswitch_3
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    :goto_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_5
    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->seriesAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    :goto_3
    if-eqz v3, :cond_b

    const/4 v7, 0x1

    if-nez v2, :cond_6

    move v2, v7

    goto :goto_4

    :cond_6
    move/from16 v2, v17

    :goto_4
    if-nez v2, :cond_8

    if-eqz v11, :cond_7

    invoke-virtual {v3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->getHorizontalAnchor()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAnchorStore;->getMinX(Ljava/lang/String;)I

    move-result v8

    goto :goto_5

    :cond_7
    invoke-virtual {v3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->getHorizontalAnchor()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAnchorStore;->getMaxX(Ljava/lang/String;)I

    move-result v8

    :goto_5
    invoke-virtual {v3, v8}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->setMarginHorizontal(I)V

    :cond_8
    if-nez v11, :cond_9

    if-eqz v2, :cond_9

    goto :goto_6

    :cond_9
    move/from16 v7, v17

    :goto_6
    xor-int/lit8 v2, v2, 0x1

    xor-int/lit8 v9, v11, 0x1

    invoke-virtual/range {p3 .. p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->getProductName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/motorola/camera/Util;->isMotoProduct(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    if-nez v11, :cond_a

    move/from16 v8, v17

    :goto_7
    move-object v2, v6

    move v6, v7

    goto :goto_8

    :cond_a
    move v8, v2

    goto :goto_7

    :goto_8
    const/4 v7, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->getUseStroke()Z

    move-result v10

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v10}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->drawTextWatermarkIfEnabled(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;Ljava/util/Map;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAnchorStore;ZLjava/lang/Boolean;ZZZ)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_b
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v5, p5

    move/from16 v2, v18

    goto/16 :goto_1

    :cond_c
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x35fe0189 -> :sswitch_3
        0x59a4b87 -> :sswitch_2
        0x633fb29 -> :sswitch_1
        0xe1d1085 -> :sswitch_0
    .end sparse-switch
.end method

.method private final drawSignatureWatermark(Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;Ljava/util/Map;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAnchorStore;)Landroid/graphics/Bitmap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAnchorStore;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->getSignature()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->signatureAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    const-string v0, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.settings.preferences.watermark.WatermarkTextElementAttributes"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3, p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->shouldApplyVerticalOffsetByAnchor(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;Ljava/util/Map;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->getUseStroke()Z

    move-result v10

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v10}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->drawTextWatermarkIfEnabled(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;Ljava/util/Map;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAnchorStore;ZLjava/lang/Boolean;ZZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private final drawTextWatermarkIfEnabled(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;Ljava/util/Map;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAnchorStore;ZLjava/lang/Boolean;ZZZ)Landroid/graphics/Bitmap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAnchorStore;",
            "Z",
            "Ljava/lang/Boolean;",
            "ZZZ)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    if-nez p3, :cond_0

    return-object p1

    :cond_0
    if-eqz p7, :cond_1

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    move v3, p4

    move v2, p6

    move/from16 v4, p8

    move/from16 v7, p9

    move/from16 v8, p10

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p3, p4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->shouldApplyVerticalOffsetByAnchor(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;Ljava/util/Map;)Z

    move-result p4

    goto :goto_0

    :goto_1
    invoke-direct/range {v0 .. v8}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->addTextToBitmap(Landroid/graphics/Bitmap;ZZZLjava/lang/String;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;ZZ)Landroid/util/Pair;

    move-result-object p0

    invoke-virtual {p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Landroid/graphics/Point;

    invoke-virtual {p5, p1, p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAnchorStore;->addPoint(Ljava/lang/String;Landroid/graphics/Point;)V

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string/jumbo p1, "second"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private final getElementAttributesAndScale(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;FI)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;
    .locals 19

    move/from16 v0, p3

    move/from16 v1, p4

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual {v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider;->getElementAttributes(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

    move-result-object v2

    instance-of v3, v2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;->getFontSize()I

    move-result v3

    invoke-static {v3, v0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->scaleToTargetRatio(IFI)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;->withFontSize(I)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    move-result-object v3

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->getPaddingHorizontal()I

    move-result v4

    invoke-static {v4, v0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->scaleToTargetRatio(IFI)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;->withPaddingHorizontal(I)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    move-result-object v3

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->getPaddingVertical()I

    move-result v4

    invoke-static {v4, v0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->scaleToTargetRatio(IFI)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;->withPaddingVertical(I)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    move-result-object v3

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->getPaddingVerticalOffset()I

    move-result v4

    invoke-static {v4, v0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->scaleToTargetRatio(IFI)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;->withPaddingVerticalOffset(I)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    move-result-object v3

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->getMarginHorizontal()I

    move-result v4

    invoke-static {v4, v0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->scaleToTargetRatio(IFI)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;->withMarginHorizontal(I)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    move-result-object v3

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->getMarginHorizontalOffset()I

    move-result v2

    invoke-static {v2, v0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->scaleToTargetRatio(IFI)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;->withMarginHorizontalOffset(I)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v3, v2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkImageElementAttributes;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkImageElementAttributes;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->getPaddingHorizontal()I

    move-result v3

    invoke-static {v3, v0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->scaleToTargetRatio(IFI)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkImageElementAttributes;->withPaddingHorizontal(I)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkImageElementAttributes;

    move-result-object v3

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->getPaddingVertical()I

    move-result v4

    invoke-static {v4, v0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->scaleToTargetRatio(IFI)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkImageElementAttributes;->withPaddingVertical(I)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkImageElementAttributes;

    move-result-object v3

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->getPaddingVerticalOffset()I

    move-result v4

    invoke-static {v4, v0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->scaleToTargetRatio(IFI)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkImageElementAttributes;->withPaddingVerticalOffset(I)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkImageElementAttributes;

    move-result-object v3

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->getMarginHorizontal()I

    move-result v4

    invoke-static {v4, v0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->scaleToTargetRatio(IFI)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkImageElementAttributes;->withMarginHorizontal(I)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkImageElementAttributes;

    move-result-object v3

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->getMarginHorizontalOffset()I

    move-result v4

    invoke-static {v4, v0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->scaleToTargetRatio(IFI)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkImageElementAttributes;->withMarginHorizontalOffset(I)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkImageElementAttributes;

    move-result-object v3

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkImageElementAttributes;->getImageWidth()I

    move-result v4

    invoke-static {v4, v0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->scaleToTargetRatio(IFI)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkImageElementAttributes;->withImageWidth(I)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkImageElementAttributes;

    move-result-object v3

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkImageElementAttributes;->getImageHeight()I

    move-result v2

    invoke-static {v2, v0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->scaleToTargetRatio(IFI)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkImageElementAttributes;->withImageHeight(I)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkImageElementAttributes;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    const-string v17, ""

    const-string v18, ""

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, ""

    const-string v13, ""

    const/16 v14, 0xff

    const/16 v15, 0xff

    const/16 v16, 0x0

    invoke-direct/range {v1 .. v18}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;-><init>(Ljava/lang/String;IIIIIIIIILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final addWatermarksToBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;)Landroid/graphics/Bitmap;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v6, p3

    move-object/from16 v3, p4

    const-string v2, "context"

    move-object/from16 v11, p1

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "bitmap"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "options"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "content"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAnchorStore;

    invoke-direct {v5}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAnchorStore;-><init>()V

    invoke-direct {v0, v6, v3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->buildNameEnabledMap(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;)Ljava/util/Map;

    move-result-object v4

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/MotoDeviceParser;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->getProductName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, "phoneName"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/motorola/camera/Util;->isMotoProduct(Ljava/lang/String;)Z

    move-result v7

    const-string/jumbo v8, "variant"

    if-nez v7, :cond_0

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v8, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v7}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    goto/16 :goto_c

    :cond_0
    sget-object v7, Lkotlin/text/RegexOption;->$VALUES:[Lkotlin/text/RegexOption;

    const/16 v7, 0x42

    const-string v9, "(moto|motorola)\\s+(razr|edge|g|s|x)?\\s*(\\d+[a-zA-Z]*)?\\s*(.*)?"

    invoke-static {v9, v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    const-string v9, "compile(...)"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    const-string v9, "matcher(...)"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-static {v7, v9, v2}, Lkotlin/text/RegexKt;->access$findNext(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lkotlin/text/MatcherMatchResult;

    move-result-object v2

    const-string v7, "Unknown"

    const-string v10, "moto"

    const-string v12, "brand"

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v2

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Lkotlin/collections/AbstractList;

    new-instance v14, Lkotlin/UIntArray$Iterator;

    const/4 v15, 0x5

    invoke-direct {v14, v15, v2}, Lkotlin/UIntArray$Iterator;-><init>(ILjava/lang/Object;)V

    move v2, v9

    :goto_0
    invoke-virtual {v14}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    move-result v15

    const/16 v16, 0x0

    if-eqz v15, :cond_3

    invoke-virtual {v14}, Lkotlin/UIntArray$Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v17, v2, 0x1

    if-ltz v2, :cond_2

    move-object/from16 v16, v15

    check-cast v16, Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-static/range {v16 .. v16}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move/from16 v2, v17

    goto :goto_0

    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v16

    :cond_3
    new-instance v2, Lkotlin/collections/builders/MapBuilder;

    invoke-direct {v2}, Lkotlin/collections/builders/MapBuilder;-><init>()V

    invoke-static {v13, v9}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    if-eqz v14, :cond_5

    invoke-static {v14}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_4

    goto :goto_1

    :cond_4
    move-object v10, v14

    :cond_5
    :goto_1
    invoke-virtual {v2, v12, v10}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x1

    invoke-static {v13, v10}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-eqz v12, :cond_6

    invoke-static {v12}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_6
    move-object/from16 v12, v16

    :goto_2
    const/4 v14, 0x2

    invoke-static {v13, v14}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    if-eqz v14, :cond_7

    invoke-static {v14}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    :cond_7
    move-object/from16 v14, v16

    :goto_3
    const/4 v15, 0x3

    invoke-static {v13, v15}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-eqz v13, :cond_8

    invoke-static {v13}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    :cond_8
    move-object/from16 v13, v16

    :goto_4
    if-eqz v13, :cond_9

    const-string/jumbo v15, "ultra"

    invoke-static {v13, v15, v10}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    move-result v9

    if-ne v9, v10, :cond_9

    const-string v9, "Ultra"

    invoke-static {v13, v15, v9, v10}, Lkotlin/text/StringsKt__StringsJVMKt;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    :cond_9
    if-eqz v12, :cond_a

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v12, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "toLowerCase(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    move-object/from16 v9, v16

    :goto_5
    const-string v10, "model"

    if-eqz v9, :cond_18

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v15

    const/16 v6, 0x67

    if-eq v15, v6, :cond_12

    const/16 v6, 0x73

    if-eq v15, v6, :cond_10

    const/16 v6, 0x78

    if-eq v15, v6, :cond_f

    const v6, 0x2f6dbd

    if-eq v15, v6, :cond_d

    const v6, 0x354da7

    if-eq v15, v6, :cond_b

    goto/16 :goto_9

    :cond_b
    const-string/jumbo v6, "razr"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    goto/16 :goto_9

    :cond_c
    const-string/jumbo v6, "series"

    invoke-virtual {v2, v6, v12}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v14, v13}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v12

    const/16 v16, 0x0

    const/16 v17, 0x3e

    const-string v13, " "

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v8, v6}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    :cond_d
    const-string v6, "edge"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    goto/16 :goto_9

    :cond_e
    filled-new-array {v12, v14, v13}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v12

    const/16 v16, 0x0

    const/16 v17, 0x3e

    const-string v13, " "

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v8, v6}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    :cond_f
    const-string/jumbo v6, "x"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    goto/16 :goto_9

    :cond_10
    const-string/jumbo v6, "s"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    goto/16 :goto_9

    :cond_11
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v12, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "toUpperCase(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v10, v6}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v13, :cond_1b

    invoke-static {v13}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v8, v6}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    :cond_12
    const-string v6, "g"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    goto/16 :goto_9

    :cond_13
    filled-new-array {v14, v13}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lkotlin/collections/ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v18

    const/16 v22, 0x0

    const/16 v23, 0x3e

    const-string v19, " "

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v18 .. v23}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "g "

    if-eqz v14, :cond_17

    invoke-static {v14}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_14

    goto :goto_8

    :cond_14
    const/4 v10, 0x0

    :goto_6
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v10, v12, :cond_16

    invoke-virtual {v14, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->isDigit(C)Z

    move-result v12

    if-nez v12, :cond_15

    move-object v6, v9

    goto :goto_7

    :cond_15
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_16
    :goto_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v8, v6}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_b

    :cond_17
    :goto_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v8, v6}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_b

    :cond_18
    :goto_9
    if-eqz v12, :cond_1a

    invoke-static {v12}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_19

    goto :goto_a

    :cond_19
    invoke-virtual {v2, v10, v12}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v14, v13}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v12

    const/16 v16, 0x0

    const/16 v17, 0x3e

    const-string v13, " "

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v8, v6}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_b

    :cond_1a
    :goto_a
    invoke-virtual {v2, v8, v7}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :cond_1b
    :goto_b
    invoke-virtual {v2}, Lkotlin/collections/builders/MapBuilder;->build()Lkotlin/collections/builders/MapBuilder;

    move-result-object v2

    goto :goto_c

    :cond_1c
    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v12, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v8, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, v6}, [Lkotlin/Pair;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    :goto_c
    invoke-virtual/range {p3 .. p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getSignatureEnabled()Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-virtual {v3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->getSignature()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1d

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->drawSignatureWatermark(Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;Ljava/util/Map;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAnchorStore;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1d
    invoke-virtual/range {p3 .. p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getDeviceWatermarkEnabled()Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->drawProductNameWatermarks(Landroid/graphics/Bitmap;Ljava/util/Map;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;Ljava/util/Map;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAnchorStore;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1e
    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move-object/from16 v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->drawDateTimeWatermarks(Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;Ljava/util/Map;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAnchorStore;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getShootingParamsEnabled()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual/range {p4 .. p4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->getShootingParams()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->shootingParamsAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    invoke-virtual/range {p4 .. p4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->isRtl()Z

    move-result v9

    invoke-virtual/range {p4 .. p4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;->getUseStroke()Z

    move-result v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->drawTextWatermarkIfEnabled(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;Ljava/util/Map;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAnchorStore;ZLjava/lang/Boolean;ZZZ)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1f
    move-object v2, v1

    invoke-virtual/range {p3 .. p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getLogoEnabled()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual/range {p3 .. p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->getAutographEnabled()Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_20
    move-object/from16 v0, p0

    move-object/from16 v4, p3

    move-object/from16 v3, p4

    move-object v1, v11

    goto :goto_d

    :cond_21
    return-object v2

    :goto_d
    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->drawImageWatermarks(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkContent;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAnchorStore;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final drawWireframeLine(Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkFrameAttributes;IFIIZ)Landroid/graphics/Bitmap;
    .locals 10

    move/from16 p0, p6

    const-string/jumbo v0, "wmBitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "wireframeAttributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkFrameAttributes;->getLineWidth()I

    move-result v0

    invoke-static {v0, p4, p5}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->scaleToTargetRatio(IFI)I

    move-result v3

    invoke-virtual {p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkFrameAttributes;->getLinePadding()I

    move-result v0

    invoke-static {v0, p4, p5}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->scaleToTargetRatio(IFI)I

    move-result v0

    invoke-virtual {p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkFrameAttributes;->getImageLineHorizontalLength()I

    move-result v1

    invoke-static {v1, p4, p5}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->scaleToTargetRatio(IFI)I

    move-result v1

    invoke-virtual {p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkFrameAttributes;->getImageLineVerticalLength()I

    move-result v2

    invoke-static {v2, p4, p5}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->scaleToTargetRatio(IFI)I

    move-result p4

    if-eqz p7, :cond_0

    move p4, v1

    :cond_0
    if-eqz p0, :cond_1

    const/16 p5, 0xb4

    if-eq p0, p5, :cond_1

    goto :goto_0

    :cond_1
    move v9, v1

    move v1, p4

    move p4, v9

    :goto_0
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkFrameAttributes;->getLineColor()I

    move-result v4

    int-to-float v5, v0

    int-to-float v6, v1

    int-to-float v7, p4

    move-object v1, p0

    move-object v2, p1

    move v8, p3

    invoke-virtual/range {v1 .. v8}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->drawCornerPath(Landroid/graphics/Bitmap;IIFFFI)V

    return-object p1
.end method

.method public final initPreviewAttributes(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)V
    .locals 4

    const-string/jumbo v0, "style"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;->BRAND:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;

    invoke-virtual {v0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider;->getElementAttributes(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

    move-result-object v1

    instance-of v2, v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    check-cast v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->brandAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;->SERIES:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;

    invoke-virtual {v0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider;->getElementAttributes(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

    move-result-object v1

    instance-of v2, v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    check-cast v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->seriesAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;->MODEL:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;

    invoke-virtual {v0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider;->getElementAttributes(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

    move-result-object v1

    instance-of v2, v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move-object v1, v3

    :goto_2
    check-cast v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->modelAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;->VARIANT:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;

    invoke-virtual {v0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider;->getElementAttributes(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

    move-result-object v1

    instance-of v2, v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move-object v1, v3

    :goto_3
    check-cast v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->variantAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;->SIGNATURE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;

    invoke-virtual {v0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider;->getElementAttributes(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

    move-result-object v1

    instance-of v2, v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    move-object v1, v3

    :goto_4
    check-cast v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->signatureAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;->DATE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;

    invoke-virtual {v0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider;->getElementAttributes(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

    move-result-object v1

    instance-of v2, v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    if-eqz v2, :cond_5

    goto :goto_5

    :cond_5
    move-object v1, v3

    :goto_5
    check-cast v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->dateAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;->TIME:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;

    invoke-virtual {v0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider;->getElementAttributes(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

    move-result-object v1

    instance-of v2, v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    if-eqz v2, :cond_6

    goto :goto_6

    :cond_6
    move-object v1, v3

    :goto_6
    check-cast v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->timeAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;->SHOOTING_PARAMS:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;

    invoke-virtual {v0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider;->getElementAttributes(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

    move-result-object v1

    instance-of v2, v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    if-eqz v2, :cond_7

    goto :goto_7

    :cond_7
    move-object v1, v3

    :goto_7
    check-cast v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->shootingParamsAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;->LINE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;

    invoke-virtual {v0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider;->getElementAttributes(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

    move-result-object v1

    if-eqz v1, :cond_8

    goto :goto_8

    :cond_8
    move-object v1, v3

    :goto_8
    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->lineAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;->LOGO:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;

    invoke-virtual {v0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider;->getElementAttributes(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

    move-result-object v1

    if-eqz v1, :cond_9

    goto :goto_9

    :cond_9
    move-object v1, v3

    :goto_9
    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->logoAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;->AUTOGRAPH:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;

    invoke-virtual {v0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider;->getElementAttributes(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

    move-result-object p1

    if-eqz p1, :cond_a

    move-object v3, p1

    :cond_a
    iput-object v3, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->autographAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

    return-void
.end method

.method public final initWatermarkAttributes(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;FI)V
    .locals 2

    const-string/jumbo v0, "style"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;->BRAND:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->getElementAttributesAndScale(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;FI)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.settings.preferences.watermark.WatermarkTextElementAttributes"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->brandAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;->SERIES:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->getElementAttributesAndScale(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;FI)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->seriesAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;->MODEL:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->getElementAttributesAndScale(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;FI)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->modelAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;->VARIANT:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->getElementAttributesAndScale(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;FI)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->variantAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;->SIGNATURE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->getElementAttributesAndScale(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;FI)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->signatureAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;->DATE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->getElementAttributesAndScale(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;FI)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->dateAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;->TIME:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->getElementAttributesAndScale(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;FI)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->timeAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;->SHOOTING_PARAMS:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->getElementAttributesAndScale(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;FI)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->shootingParamsAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkTextElementAttributes;

    instance-of v0, p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Border;

    const-string v1, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.settings.preferences.watermark.WatermarkImageElementAttributes"

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;->AUTOGRAPH:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->getElementAttributesAndScale(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;FI)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkImageElementAttributes;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->autographAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

    return-void

    :cond_0
    instance-of v0, p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Frame;

    if-nez v0, :cond_3

    instance-of v0, p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Label;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Basic;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;->LINE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->getElementAttributesAndScale(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;FI)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkImageElementAttributes;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->lineAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;->LOGO:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->getElementAttributesAndScale(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributesProvider$WatermarkElementType;FI)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkImageElementAttributes;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkHelper;->logoAttributes:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;

    :cond_3
    return-void
.end method

.method public final shouldApplyVerticalOffsetByAnchor(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const-string p0, "attributes"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "enabledMap"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkAttributes;->getVerticalAnchor()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "|"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
