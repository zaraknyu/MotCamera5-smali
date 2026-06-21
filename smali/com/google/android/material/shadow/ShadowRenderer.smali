.class public final Lcom/google/android/material/shadow/ShadowRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final shadowPaint:Landroid/graphics/Paint;

.field public shadowStartColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {p0, v1}, Lcom/google/android/material/shadow/ShadowRenderer;->setShadowColor(I)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p0, Landroid/graphics/Paint;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public final setShadowColor(I)V
    .locals 1

    const/16 v0, 0x44

    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowStartColor:I

    const/16 v0, 0x14

    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    iget-object p1, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowStartColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
