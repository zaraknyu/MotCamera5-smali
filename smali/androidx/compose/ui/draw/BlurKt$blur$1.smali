.class public final Landroidx/compose/ui/draw/BlurKt$blur$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $clip:Z

.field public final synthetic $radiusX:F

.field public final synthetic $radiusY:F

.field public final synthetic $tileMode:I


# direct methods
.method public constructor <init>(FFIZ)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/draw/BlurKt$blur$1;->$radiusX:F

    iput p2, p0, Landroidx/compose/ui/draw/BlurKt$blur$1;->$radiusY:F

    iput p3, p0, Landroidx/compose/ui/draw/BlurKt$blur$1;->$tileMode:I

    iput-boolean p4, p0, Landroidx/compose/ui/draw/BlurKt$blur$1;->$clip:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    iget-object v0, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->graphicsDensity:Landroidx/compose/ui/unit/Density;

    invoke-interface {v0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v0

    iget v1, p0, Landroidx/compose/ui/draw/BlurKt$blur$1;->$radiusX:F

    mul-float/2addr v0, v1

    iget-object v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->graphicsDensity:Landroidx/compose/ui/unit/Density;

    invoke-interface {v1}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v1

    iget v2, p0, Landroidx/compose/ui/draw/BlurKt$blur$1;->$radiusY:F

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    new-instance v2, Landroidx/compose/ui/graphics/BlurEffect;

    iget v3, p0, Landroidx/compose/ui/draw/BlurKt$blur$1;->$tileMode:I

    invoke-direct {v2, v0, v1, v3}, Landroidx/compose/ui/graphics/BlurEffect;-><init>(FFI)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setRenderEffect(Landroidx/compose/ui/graphics/BlurEffect;)V

    sget-object v0, Landroidx/compose/ui/graphics/Brush;->RectangleShape:Lcom/google/mlkit/common/internal/zzc;

    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setShape(Landroidx/compose/ui/graphics/Shape;)V

    iget-boolean p0, p0, Landroidx/compose/ui/draw/BlurKt$blur$1;->$clip:Z

    invoke-virtual {p1, p0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setClip(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
