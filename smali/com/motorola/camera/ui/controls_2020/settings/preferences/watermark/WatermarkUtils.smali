.class public final Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0011\n\u0002\u0008\u0005\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J(\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u0008H\u0002J(\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u0008H\u0002J \u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u0008H\u0007J\u001c\u0010\u0017\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0019\u001a\u00020\u0008H\u0007J(\u0010\u001a\u001a\u0004\u0018\u00010\n2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00082\u0006\u0010\u001e\u001a\u00020\u00082\u0006\u0010\u001f\u001a\u00020\u0008J\u0016\u0010 \u001a\u00020!2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0008J\u001e\u0010\"\u001a\u00020\n2\u0006\u0010#\u001a\u00020\u00082\u0006\u0010$\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u0008J\u00b4\u0001\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020\n0&2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010(\u001a\u00020\u00052\u0006\u0010)\u001a\u00020\u00082\u0006\u0010*\u001a\u00020\u00082\u0008\u0010+\u001a\u0004\u0018\u00010\u00052\u0006\u0010,\u001a\u00020\u00082\u0006\u0010-\u001a\u00020\u00082\u0006\u0010.\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u00082\u0006\u0010/\u001a\u00020\u00082\u0006\u00100\u001a\u00020\u00082\u0006\u00101\u001a\u00020\u00082\u0006\u00102\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u00082\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u0002042\u0006\u00106\u001a\u0002042\u0006\u00107\u001a\u0002042\u0006\u00108\u001a\u000204J\u0092\u0001\u00109\u001a\u000e\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020\n0&2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010:\u001a\u00020!2\u0006\u0010;\u001a\u00020\u00082\u0006\u0010<\u001a\u00020\u00082\u0006\u0010)\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u00082\u0006\u00101\u001a\u00020\u00082\u0006\u00102\u001a\u00020\u00082\u0006\u0010/\u001a\u00020\u00082\u0006\u00100\u001a\u00020\u00082\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u0002042\u0006\u00106\u001a\u0002042\u0006\u0010\u000e\u001a\u00020\u00082\u0006\u0010=\u001a\u000204J\u0010\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020\nH\u0007JM\u0010A\u001a\u00020B2\u0008\u0010+\u001a\u0004\u0018\u00010\u00052\u0006\u0010*\u001a\u00020\u00082\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010.\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010C\u001a\u0002042\n\u0008\u0002\u0010-\u001a\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0002\u0010DJ8\u0010E\u001a\u00020?2\u0006\u0010F\u001a\u00020G2\u0006\u0010(\u001a\u00020\u00052\u0006\u0010H\u001a\u00020\u000c2\u0006\u0010I\u001a\u00020\u000c2\u0006\u0010J\u001a\u00020B2\u0006\u0010K\u001a\u000204H\u0002J\u0010\u0010L\u001a\u00020\u00052\u0006\u0010M\u001a\u00020\u0005H\u0002J\u0012\u0010N\u001a\u00020O2\u0008\u0010+\u001a\u0004\u0018\u00010\u0005H\u0002J\u0012\u0010P\u001a\u00020\u00082\u0008\u0010+\u001a\u0004\u0018\u00010\u0005H\u0002J\u0016\u0010Q\u001a\u00020\n2\u0006\u0010R\u001a\u00020\n2\u0006\u0010S\u001a\u00020\nJ\u0018\u0010T\u001a\u00020\n2\u0006\u0010R\u001a\u00020\n2\u0006\u0010S\u001a\u00020\nH\u0007J(\u0010U\u001a\u00020\n2\u0006\u0010R\u001a\u00020\n2\u0006\u0010S\u001a\u00020\n2\u0006\u0010V\u001a\u00020\u00082\u0006\u0010W\u001a\u00020\u0008H\u0007J(\u0010X\u001a\u00020\n2\u0006\u0010S\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010Y\u001a\u00020\u00082\u0006\u0010\u001e\u001a\u00020\u0008H\u0007J(\u0010Z\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020[2\u0006\u0010S\u001a\u00020\n2\u0006\u0010V\u001a\u00020\u00082\u0006\u0010W\u001a\u00020\u0008H\u0007J6\u0010\\\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010]\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u00082\u0006\u0010^\u001a\u00020\u000c2\u0006\u0010_\u001a\u00020\u000c2\u0006\u0010`\u001a\u00020\u000cJF\u0010a\u001a\u00020?2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010]\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u00082\u0006\u0010^\u001a\u00020\u000c2\u0006\u0010_\u001a\u00020\u000c2\u0006\u0010`\u001a\u00020\u000c2\u0006\u0010b\u001a\u0002042\u0006\u0010c\u001a\u000204J>\u0010a\u001a\u00020?2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010]\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u00082\u0006\u0010^\u001a\u00020\u000c2\u0006\u0010_\u001a\u00020\u000c2\u0006\u0010`\u001a\u00020\u000c2\u0006\u0010d\u001a\u00020\u0008J\u0018\u0010e\u001a\u00020\n2\u0006\u0010f\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\u0008H\u0007J\u0010\u0010g\u001a\u00020[2\u0006\u0010h\u001a\u00020[H\u0007J\u0010\u0010i\u001a\u0002042\u0006\u0010h\u001a\u00020[H\u0007J\u0010\u0010j\u001a\u00020[2\u0006\u0010h\u001a\u00020[H\u0007J\u0010\u0010k\u001a\u00020\u00082\u0006\u0010l\u001a\u00020\u0008H\u0007J\u0010\u0010m\u001a\u00020\u00082\u0006\u0010l\u001a\u00020\u0008H\u0007J\u0010\u0010n\u001a\u00020\u00082\u0006\u0010l\u001a\u00020\u0008H\u0007J \u0010o\u001a\u00020[2\u0006\u0010p\u001a\u00020\u00082\u0006\u0010q\u001a\u00020\u00082\u0006\u0010r\u001a\u00020\u0008H\u0007J\u0018\u0010s\u001a\u0002042\u0006\u0010#\u001a\u00020\u00082\u0006\u0010$\u001a\u00020\u0008H\u0007J\u0018\u0010t\u001a\u00020\u00082\u0006\u0010u\u001a\u00020v2\u0006\u0010p\u001a\u00020\u0008H\u0007J\u0018\u0010w\u001a\u00020?2\u0006\u0010x\u001a\u00020y2\u0006\u0010z\u001a\u00020{H\u0007J\u0010\u0010|\u001a\u00020y2\u0006\u0010z\u001a\u00020{H\u0007J\u0010\u0010}\u001a\u00020y2\u0006\u0010z\u001a\u00020{H\u0007J\u0012\u0010~\u001a\u00020?2\u0008\u0010\u007f\u001a\u0004\u0018\u00010\nH\u0007J4\u0010\u0080\u0001\u001a\u00020?2\t\u0010\u0081\u0001\u001a\u0004\u0018\u00010\n2\u0018\u0010\u0082\u0001\u001a\r\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\n0\u0083\u0001\"\u0004\u0018\u00010\nH\u0007\u00a2\u0006\u0003\u0010\u0084\u0001J\u001b\u0010\u0085\u0001\u001a\u00020\n2\u0007\u0010\u0086\u0001\u001a\u00020\n2\u0007\u0010\u0087\u0001\u001a\u00020\nH\u0007R\u0016\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0088\u0001"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "kotlin.jvm.PlatformType",
        "calculateXPositionLTR",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "textWidth",
        "",
        "paddingHorizontal",
        "position",
        "calculateYPosition",
        "centerY",
        "bitmapHeight",
        "paddingVertical",
        "scaleToTargetRatio",
        "sourceSize",
        "sourceReference",
        "targetReference",
        "addBackgroundToWatermark",
        "wmBitmap",
        "color",
        "drawableToBitmap",
        "context",
        "Landroid/content/Context;",
        "resId",
        "targetWidth",
        "targetHeight",
        "loadDrawable",
        "Landroid/graphics/drawable/Drawable;",
        "createBackgroundBitmap",
        "width",
        "height",
        "addTextToBitmap",
        "Landroid/util/Pair;",
        "Landroid/graphics/Point;",
        "text",
        "layoutType",
        "fontSize",
        "fontStyle",
        "fontColor",
        "fontAlpha",
        "strokeColor",
        "paddingHorizontalOffset",
        "paddingVerticalOffset",
        "marginHorizontal",
        "marginHorizontalOffset",
        "needHorizontalOffset",
        "",
        "needVerticalOffset",
        "needHorizontalMargin",
        "useTextWidthOffset",
        "useStroke",
        "addDrawableToBitmap",
        "drawable",
        "drawableWidth",
        "drawableHeight",
        "useImageWidthOffset",
        "filterAlphaBitmap",
        "",
        "bmp",
        "createPaint",
        "Landroid/graphics/Paint;",
        "isStroke",
        "(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;)Landroid/graphics/Paint;",
        "drawContent",
        "canvas",
        "Landroid/graphics/Canvas;",
        "x",
        "y",
        "paint",
        "useCustomFont",
        "convertToIconCode",
        "input",
        "getTypeface",
        "Landroid/graphics/Typeface;",
        "getFontStyle",
        "combineBitmapsAlignBottom",
        "preview",
        "watermark",
        "combineBitmapsAttachBottom",
        "attachWatermarkBottomWithBorders",
        "borderWidth",
        "borderColor",
        "drawBitmapWithOffset",
        "offset",
        "attachWatermarkBottomWithFixedBorders",
        "Landroid/util/Size;",
        "addWireFrame",
        "strokeWidth",
        "padding",
        "horizontalLength",
        "verticalLength",
        "drawCornerPath",
        "isLeft",
        "isTop",
        "corner",
        "scaleBitmapToWidth",
        "sourceBitmap",
        "convertToPortraitSize",
        "size",
        "isPortraitSize",
        "transposeSize",
        "roundUpToEven",
        "number",
        "roundUpToNextMultipleOf8",
        "roundUpToNextMultipleOf32",
        "getRotatedSize",
        "imageWidth",
        "imageHeight",
        "orientation",
        "isExceedFullRatio",
        "computeBorderPx",
        "attrs",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkCommonAttributes;",
        "updateWatermarkOptions",
        "watermarkOptions",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;",
        "style",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;",
        "getWatermarkOption",
        "getWatermarkOptionSnapshot",
        "safeRecycle",
        "bm",
        "recycleSafely",
        "candidate",
        "keep",
        "",
        "(Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;)V",
        "replaceAndRecycleIfNew",
        "current",
        "next",
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

.field public static final INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;

    invoke-direct {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;

    const-string v0, "WatermarkUtils"

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addBackgroundToWatermark(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->drawColor(I)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final attachWatermarkBottomWithBorders(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10

    const-string/jumbo v0, "preview"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "watermark"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/lit8 v1, p2, 0x2

    sub-int v1, v0, v1

    if-lez v1, :cond_0

    int-to-float v2, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v2, v3

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string v1, "createScaledBitmap(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/2addr v2, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/2addr v1, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v3, "createBitmap(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v9, p3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v7, v0

    int-to-float v6, p2

    const/4 v5, 0x0

    move v8, v6

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move p3, v7

    move v6, v8

    int-to-float v8, v2

    move v7, v6

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sub-int/2addr v0, p2

    int-to-float v5, v0

    move v7, p3

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 p2, 0x0

    invoke-virtual {v4, p0, v6, v6, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 p0, 0x0

    invoke-virtual {v4, p1, p0, v8, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Border width is too large, resulting in negative preview width."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Border width must be non-negative."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final attachWatermarkBottomWithFixedBorders(Landroid/util/Size;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 8

    const-string/jumbo v0, "sourceSize"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "watermark"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p2, :cond_0

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    mul-int/lit8 v1, p2, 0x2

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v7, p3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2, p3}, Landroid/graphics/Canvas;->drawColor(I)V

    int-to-float v5, v1

    int-to-float v4, p2

    const/4 v3, 0x0

    move v6, v4

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move p3, v5

    move v4, v6

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v3

    add-int/2addr v3, p2

    int-to-float v6, v3

    const/4 v3, 0x0

    move v5, v4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sub-int/2addr v1, p2

    int-to-float v3, v1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    add-int/2addr v1, p2

    int-to-float v6, v1

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    add-int/2addr p0, p2

    int-to-float p0, p0

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-virtual {v2, p1, p3, p0, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Border width must be non-negative."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final calculateXPositionLTR(Landroid/graphics/Bitmap;FII)I
    .locals 0

    if-eqz p4, :cond_2

    const/4 p0, 0x1

    if-eq p4, p0, :cond_2

    const/4 p0, 0x2

    if-eq p4, p0, :cond_1

    const/4 p0, 0x3

    if-ne p4, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid position value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    int-to-float p0, p0

    int-to-float p1, p3

    add-float/2addr p1, p2

    sub-float/2addr p0, p1

    float-to-int p0, p0

    return p0

    :cond_2
    return p3
.end method

.method private final calculateYPosition(FIII)F
    .locals 1

    const/high16 p0, 0x40000000    # 2.0f

    if-eqz p4, :cond_2

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    const/4 v0, 0x2

    if-eq p4, v0, :cond_2

    const/4 v0, 0x3

    if-eq p4, v0, :cond_1

    const/4 p0, 0x4

    if-ne p4, p0, :cond_0

    return p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid position value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    int-to-float p2, p2

    div-float/2addr p2, p0

    int-to-float p0, p3

    sub-float/2addr p2, p0

    add-float/2addr p2, p1

    return p2

    :cond_2
    int-to-float p2, p2

    div-float/2addr p2, p0

    int-to-float p0, p3

    sub-float/2addr p2, p0

    sub-float/2addr p1, p2

    return p1
.end method

.method public static final combineBitmapsAttachBottom(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    const-string/jumbo v0, "preview"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "watermark"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createBitmap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v1, p1, v2, p0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The widths of the two bitmaps must be the same."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final computeBorderPx(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkCommonAttributes;I)I
    .locals 1

    const-string v0, "attrs"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkCommonAttributes;->getWatermarkBorder()I

    move-result v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkCommonAttributes;->getWatermarkWidth()I

    move-result p0

    int-to-float p0, p0

    invoke-static {v0, p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->scaleToTargetRatio(IFI)I

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->roundUpToEven(I)I

    move-result p0

    return p0
.end method

.method private final convertToIconCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "toLowerCase(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v0, -0x9085a71

    if-eq p1, v0, :cond_3

    const v0, 0x333b9d

    if-eq p1, v0, :cond_2

    const v0, 0x354da7

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "razr"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "\ue902"

    return-object p0

    :cond_2
    const-string p1, "moto"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string/jumbo p0, "\ue900"

    return-object p0

    :cond_3
    const-string p1, "motorola"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    :cond_4
    :goto_0
    const-string p0, ""

    return-object p0

    :cond_5
    const-string/jumbo p0, "\ue901"

    return-object p0
.end method

.method public static final convertToPortraitSize(Landroid/util/Size;)Landroid/util/Size;
    .locals 1

    const-string/jumbo v0, "size"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->isPortraitSize(Landroid/util/Size;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->transposeSize(Landroid/util/Size;)Landroid/util/Size;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private final createPaint(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;)Landroid/graphics/Paint;
    .locals 1

    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object p2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;

    invoke-direct {p2, p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    sget-object p1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object p1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    const/16 p1, 0xc1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setFlags(I)V

    if-eqz p6, :cond_0

    invoke-virtual {p6}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_0
    if-eqz p5, :cond_1

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object p0

    :cond_1
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    return-object p0
.end method

.method public static synthetic createPaint$default(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;ILjava/lang/Object;)Landroid/graphics/Paint;
    .locals 1

    and-int/lit8 p8, p7, 0x4

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_1

    move-object p4, v0

    :cond_1
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_2

    const/4 p5, 0x0

    :cond_2
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_3

    move-object p6, v0

    :cond_3
    invoke-direct/range {p0 .. p6}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->createPaint(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;)Landroid/graphics/Paint;

    move-result-object p0

    return-object p0
.end method

.method public static final drawBitmapWithOffset(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 5

    const-string/jumbo v0, "watermark"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, p0, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p0, v3

    int-to-float p3, p3

    mul-float/2addr p0, p3

    float-to-int p0, p0

    new-instance v3, Landroid/graphics/RectF;

    int-to-float p2, p2

    add-float/2addr p3, p2

    int-to-float p0, p0

    add-float/2addr p0, p2

    invoke-direct {v3, p2, p2, p3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p1, v4, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final drawContent(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;Z)V
    .locals 0

    if-eqz p6, :cond_0

    invoke-direct {p0, p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->convertToIconCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static final filterAlphaBitmap(Landroid/graphics/Bitmap;)V
    .locals 10

    const-string v0, "bmp"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int v0, v4, v8

    new-array v2, v0, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v7, v4

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    if-ge v0, v8, :cond_2

    move v3, p0

    :goto_1
    if-ge v3, v4, :cond_1

    mul-int v5, v0, v4

    add-int/2addr v5, v3

    aget v6, v2, v5

    shr-int/lit8 v7, v6, 0x18

    and-int/lit16 v7, v7, 0xff

    const/16 v9, 0x10

    if-ge v7, v9, :cond_0

    move v7, p0

    goto :goto_2

    :cond_0
    const/16 v7, 0xf0

    :goto_2
    shl-int/lit8 v7, v7, 0x18

    const v9, 0xffffff

    and-int/2addr v6, v9

    or-int/2addr v6, v7

    aput v6, v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-void
.end method

.method private final getFontStyle(Ljava/lang/String;)I
    .locals 1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const v0, -0x4642c5d0

    if-eq p0, v0, :cond_4

    const v0, 0x2e3a85

    if-eq p0, v0, :cond_2

    const v0, 0x657ac387

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "bold|italic"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    return p0

    :cond_2
    const-string p0, "bold"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    const-string p0, "italic"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x2

    return p0

    :cond_6
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final getRotatedSize(III)Landroid/util/Size;
    .locals 0

    rem-int/lit16 p2, p2, 0xb4

    if-eqz p2, :cond_0

    new-instance p2, Landroid/util/Size;

    invoke-direct {p2, p1, p0}, Landroid/util/Size;-><init>(II)V

    return-object p2

    :cond_0
    new-instance p2, Landroid/util/Size;

    invoke-direct {p2, p0, p1}, Landroid/util/Size;-><init>(II)V

    return-object p2
.end method

.method private final getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 1

    const-string v0, "custom"

    invoke-static {p1, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f090002

    invoke-static {p0, p1}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :cond_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0

    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->getFontStyle(Ljava/lang/String;)I

    move-result p0

    invoke-static {v0, p0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final getWatermarkOption(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;
    .locals 1

    const-string/jumbo v0, "style"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Basic;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Basic;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->WATERMARK_OPTION_BASIC:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    return-object p0

    :cond_0
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Label;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Label;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->WATERMARK_OPTION_LABEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    return-object p0

    :cond_1
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Frame;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Frame;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->WATERMARK_OPTION_FRAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    return-object p0

    :cond_2
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Border;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Border;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->WATERMARK_OPTION_ENDORSE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    return-object p0

    :cond_3
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static final getWatermarkOptionSnapshot(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;
    .locals 11

    const-string/jumbo v0, "style"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->getWatermarkOption(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    move-result-object v1

    const/16 v9, 0x7f

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v10}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;->copy$default(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;ZZZZZZZILjava/lang/Object;)Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;

    move-result-object p0

    return-object p0
.end method

.method public static final isExceedFullRatio(II)Z
    .locals 0

    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    sget-object p0, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE22V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    iget-object p0, p0, Lcom/motorola/camera/PreviewSize$AspectRatio;->size:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final isPortraitSize(Landroid/util/Size;)Z
    .locals 1

    const-string/jumbo v0, "size"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    if-gt v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final varargs recycleSafely(Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "keep"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    if-ne p0, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->TAG:Ljava/lang/String;

    const-string v0, "Unexpected error during recycle"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public static final replaceAndRecycleIfNew(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "current"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq p1, p0, :cond_0

    invoke-static {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->safeRecycle(Landroid/graphics/Bitmap;)V

    :cond_0
    return-object p1
.end method

.method public static final roundUpToEven(I)I
    .locals 0

    div-int/lit8 p0, p0, 0x10

    mul-int/lit8 p0, p0, 0x10

    return p0
.end method

.method public static final roundUpToNextMultipleOf32(I)I
    .locals 1

    rem-int/lit8 v0, p0, 0x20

    if-nez v0, :cond_0

    return p0

    :cond_0
    rsub-int/lit8 v0, v0, 0x20

    add-int/2addr v0, p0

    return v0
.end method

.method public static final roundUpToNextMultipleOf8(I)I
    .locals 1

    rem-int/lit8 v0, p0, 0x8

    if-nez v0, :cond_0

    return p0

    :cond_0
    rsub-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p0

    return v0
.end method

.method public static final safeRecycle(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->TAG:Ljava/lang/String;

    const-string v1, "Unexpected error during recycle"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static final scaleBitmapToWidth(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8

    const-string/jumbo v0, "sourceBitmap"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float p1, p1

    mul-float/2addr v0, p1

    float-to-int v0, v0

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {v6, p1, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string p1, "createBitmap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final scaleToTargetRatio(IFI)I
    .locals 0

    int-to-float p0, p0

    div-float/2addr p0, p1

    int-to-float p1, p2

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static final transposeSize(Landroid/util/Size;)Landroid/util/Size;
    .locals 2

    const-string/jumbo v0, "size"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public static final updateWatermarkOptions(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkOptions;Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle;)V
    .locals 1

    const-string/jumbo v0, "watermarkOptions"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "style"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Basic;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Basic;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->WATERMARK_OPTION_BASIC:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Label;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Label;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->WATERMARK_OPTION_LABEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    :cond_1
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Frame;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Frame;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->WATERMARK_OPTION_FRAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    :cond_2
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Border;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkStyle$Border;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->WATERMARK_OPTION_ENDORSE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    :cond_3
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final addDrawableToBitmap(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;IIIIIIIIIZZZIZ)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/drawable/Drawable;",
            "IIIIIIIIIZZZIZ)",
            "Landroid/util/Pair<",
            "Landroid/graphics/Point;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    move/from16 v0, p15

    const-string v1, "bitmap"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "drawable"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    if-eqz p12, :cond_0

    if-eqz p14, :cond_0

    sget-object v4, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->TAG:Ljava/lang/String;

    const-string v5, "Invalid parameters: Both needHorizontalOffset and needHorizontalMargin cannot be true simultaneously. Only one can be true."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    goto :goto_0

    :cond_0
    move/from16 v4, p14

    :goto_0
    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v9, :cond_2

    if-eq v0, v8, :cond_1

    if-eq v0, v7, :cond_1

    if-eq v0, v6, :cond_2

    if-eq v0, v5, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    sub-int/2addr v1, p3

    sub-int v1, v1, p6

    goto :goto_1

    :cond_2
    move/from16 v1, p6

    :goto_1
    sub-int/2addr v2, p4

    div-int/2addr v2, v8

    if-eqz p13, :cond_5

    if-eqz v0, :cond_4

    if-eq v0, v9, :cond_3

    if-eq v0, v8, :cond_4

    if-eq v0, v7, :cond_3

    goto :goto_2

    :cond_3
    add-int v3, v2, p11

    goto :goto_3

    :cond_4
    sub-int v3, v2, p11

    goto :goto_3

    :cond_5
    :goto_2
    move v3, v2

    :goto_3
    if-eqz p12, :cond_8

    if-eqz v0, :cond_7

    if-eq v0, v9, :cond_7

    if-eq v0, v8, :cond_6

    if-eq v0, v7, :cond_6

    if-eq v0, v6, :cond_7

    if-eq v0, v5, :cond_6

    goto :goto_4

    :cond_6
    sub-int v1, v1, p10

    goto :goto_4

    :cond_7
    add-int v1, v1, p10

    :cond_8
    :goto_4
    if-eqz v4, :cond_b

    if-eqz v0, :cond_a

    if-eq v0, v9, :cond_a

    if-eq v0, v8, :cond_9

    if-eq v0, v7, :cond_9

    if-eq v0, v6, :cond_a

    if-eq v0, v5, :cond_9

    goto :goto_5

    :cond_9
    sub-int v1, p8, p9

    sub-int/2addr v1, p3

    goto :goto_5

    :cond_a
    add-int v1, p8, p9

    :cond_b
    :goto_5
    if-ne p5, v9, :cond_c

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move/from16 v4, p7

    invoke-direct {p0, v2, v3, v4, v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->calculateYPosition(FIII)F

    move-result p0

    float-to-int v3, p0

    :cond_c
    if-eqz p16, :cond_d

    add-int p0, v1, p3

    goto :goto_6

    :cond_d
    move p0, v1

    :goto_6
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v9}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    add-int/2addr p3, v1

    add-int v2, v3, p4

    invoke-virtual {p2, v1, v3, p3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance p2, Landroid/util/Pair;

    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3, p0, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p2, p3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public final addTextToBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;IILjava/lang/String;IIIIIIIIIIZZZZZ)Landroid/util/Pair;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "IIIIIIIIIIZZZZZ)",
            "Landroid/util/Pair<",
            "Landroid/graphics/Point;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p12

    move/from16 v12, p15

    const-string v0, "bitmap"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "text"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "custom"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p4

    invoke-static/range {v0 .. v8}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->createPaint$default(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;ILjava/lang/Object;)Landroid/graphics/Paint;

    move-result-object v3

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v3, v10, v4, v2, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    if-eqz v13, :cond_0

    invoke-direct {v0, v10}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->convertToIconCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    :cond_0
    if-eqz p16, :cond_1

    if-eqz p18, :cond_1

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->TAG:Ljava/lang/String;

    const-string v5, "Invalid parameters: Both needHorizontalOffset and needHorizontalMargin cannot be true simultaneously. Only one can be true."

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move/from16 v2, p9

    goto :goto_1

    :cond_1
    move/from16 v4, p18

    goto :goto_0

    :goto_1
    invoke-direct {v0, v9, v1, v2, v12}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->calculateXPositionLTR(Landroid/graphics/Bitmap;FII)I

    move-result v2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    int-to-float v5, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    iget v8, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v6, v6, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v8, v6

    div-float/2addr v8, v7

    sub-float/2addr v5, v8

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eqz p16, :cond_4

    if-eqz v12, :cond_3

    if-eq v12, v15, :cond_3

    if-eq v12, v14, :cond_2

    if-eq v12, v8, :cond_2

    if-eq v12, v7, :cond_3

    if-eq v12, v6, :cond_2

    goto :goto_2

    :cond_2
    sub-int v2, v2, p11

    goto :goto_2

    :cond_3
    add-int v2, v2, p11

    :cond_4
    :goto_2
    if-eqz p17, :cond_7

    if-eqz v12, :cond_6

    if-eq v12, v15, :cond_5

    if-eq v12, v14, :cond_6

    if-eq v12, v8, :cond_5

    goto :goto_3

    :cond_5
    int-to-float v11, v11

    add-float/2addr v5, v11

    goto :goto_3

    :cond_6
    int-to-float v11, v11

    sub-float/2addr v5, v11

    :cond_7
    :goto_3
    if-eqz v4, :cond_a

    if-eqz v12, :cond_9

    if-eq v12, v15, :cond_9

    if-eq v12, v14, :cond_8

    if-eq v12, v8, :cond_8

    if-eq v12, v7, :cond_9

    if-eq v12, v6, :cond_8

    goto :goto_4

    :cond_8
    sub-int v2, p13, p14

    int-to-float v2, v2

    sub-float/2addr v2, v1

    float-to-int v2, v2

    goto :goto_4

    :cond_9
    add-int v2, p13, p14

    :cond_a
    :goto_4
    if-eqz p19, :cond_b

    float-to-int v1, v1

    add-int/2addr v1, v2

    :goto_5
    move/from16 v4, p3

    goto :goto_6

    :cond_b
    move v1, v2

    goto :goto_5

    :goto_6
    if-ne v4, v15, :cond_c

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move/from16 v6, p10

    invoke-direct {v0, v5, v4, v6, v12}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->calculateYPosition(FIII)F

    move-result v5

    :cond_c
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v2, v2

    move-object/from16 p9, v0

    move/from16 p12, v2

    move-object/from16 p14, v3

    move-object/from16 p10, v4

    move/from16 p13, v5

    move-object/from16 p11, v10

    move/from16 p15, v13

    invoke-direct/range {p9 .. p15}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->drawContent(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;Z)V

    move-object/from16 v2, p10

    move/from16 v3, p12

    move/from16 v0, p15

    if-eqz p20, :cond_d

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 p6, p0

    move/from16 p8, p4

    move-object/from16 p7, p5

    move-object/from16 p10, v4

    move-object/from16 p12, v6

    move/from16 p13, v7

    move-object/from16 p14, v8

    move-object/from16 p9, v10

    move/from16 p11, v11

    invoke-static/range {p6 .. p14}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->createPaint$default(Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;ILjava/lang/Object;)Landroid/graphics/Paint;

    move-result-object v4

    move-object/from16 p5, p2

    move-object/from16 p3, p6

    move/from16 p9, v0

    move-object/from16 p4, v2

    move/from16 p6, v3

    move-object/from16 p8, v4

    move/from16 p7, v5

    invoke-direct/range {p3 .. p9}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->drawContent(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;Z)V

    :cond_d
    new-instance v0, Landroid/graphics/Point;

    float-to-int v2, v5

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final addWireFrame(Landroid/graphics/Bitmap;IIFFF)Landroid/graphics/Bitmap;
    .locals 9

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v8}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->drawCornerPath(Landroid/graphics/Bitmap;IIFFFZZ)V

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->drawCornerPath(Landroid/graphics/Bitmap;IIFFFZZ)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->drawCornerPath(Landroid/graphics/Bitmap;IIFFFZZ)V

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->drawCornerPath(Landroid/graphics/Bitmap;IIFFFZZ)V

    return-object p1
.end method

.method public final combineBitmapsAlignBottom(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    const-string/jumbo p0, "preview"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "watermark"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne p0, v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string v1, "createBitmap(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int v2, v0, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v3, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    sub-int/2addr v0, p1

    int-to-float p1, v0

    invoke-virtual {v1, p2, v3, p1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The widths of the two bitmaps must be the same."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final createBackgroundBitmap(III)Landroid/graphics/Bitmap;
    .locals 7

    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string v0, "createBitmap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v6, p3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p3, 0x1

    invoke-virtual {v6, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    int-to-float v4, p1

    int-to-float v5, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-object p0
.end method

.method public final drawCornerPath(Landroid/graphics/Bitmap;IIFFFI)V
    .locals 11

    move/from16 v0, p7

    const-string v1, "bitmap"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v9, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v9, v2

    :goto_1
    if-eqz v0, :cond_3

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    goto :goto_2

    :cond_2
    move v10, v1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    goto :goto_3

    :cond_3
    :goto_2
    move v10, v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object v2, p0

    .line 16
    :goto_3
    invoke-virtual/range {v2 .. v10}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->drawCornerPath(Landroid/graphics/Bitmap;IIFFFZZ)V

    return-void
.end method

.method public final drawCornerPath(Landroid/graphics/Bitmap;IIFFFZZ)V
    .locals 3

    const-string p0, "bitmap"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    int-to-float p2, p2

    .line 4
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5
    new-instance v2, Landroid/graphics/CornerPathEffect;

    invoke-direct {v2, p2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 6
    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p2, 0x1

    .line 8
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 9
    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    if-eqz p7, :cond_0

    move p2, p4

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p2, p4

    :goto_0
    if-eqz p8, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float p4, p1, p4

    :goto_1
    if-eqz p7, :cond_2

    add-float/2addr p5, p2

    goto :goto_2

    :cond_2
    sub-float p5, p2, p5

    :goto_2
    if-eqz p8, :cond_3

    add-float/2addr p6, p4

    goto :goto_3

    :cond_3
    sub-float p6, p4, p6

    .line 12
    :goto_3
    invoke-virtual {p0, p5, p4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 13
    invoke-virtual {p0, p2, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 14
    invoke-virtual {p0, p2, p6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 15
    invoke-virtual {v0, p0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final drawableToBitmap(Landroid/content/Context;III)Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->loadDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-lez p3, :cond_1

    if-gtz p4, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p2, "createBitmap(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p1

    :cond_1
    :goto_0
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/watermark/WatermarkUtils;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "width and height must be > 0"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final loadDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-static {p1, p2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Drawable not found for resId: "

    invoke-static {p2, p1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid resource ID"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
