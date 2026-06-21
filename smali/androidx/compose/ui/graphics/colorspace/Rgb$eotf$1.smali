.class public final Landroidx/compose/ui/graphics/colorspace/Rgb$eotf$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/compose/ui/graphics/colorspace/Rgb;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/colorspace/Rgb;I)V
    .locals 0

    iput p2, p0, Landroidx/compose/ui/graphics/colorspace/Rgb$eotf$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/ui/graphics/colorspace/Rgb$eotf$1;->this$0:Landroidx/compose/ui/graphics/colorspace/Rgb;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb$eotf$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-object p0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb$eotf$1;->this$0:Landroidx/compose/ui/graphics/colorspace/Rgb;

    iget-object p1, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->oetfOrig:Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/graphics/colorspace/DoubleFunction;->invoke(D)D

    move-result-wide v2

    iget p1, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->min:F

    float-to-double v4, p1

    iget p0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->max:F

    float-to-double v6, p0

    invoke-static/range {v2 .. v7}, Lkotlin/ranges/RangesKt;->coerceIn(DDD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-object p0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb$eotf$1;->this$0:Landroidx/compose/ui/graphics/colorspace/Rgb;

    iget-object p1, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->eotfOrig:Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

    iget v2, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->min:F

    float-to-double v2, v2

    iget p0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->max:F

    float-to-double v4, p0

    invoke-static/range {v0 .. v5}, Lkotlin/ranges/RangesKt;->coerceIn(DDD)D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/graphics/colorspace/DoubleFunction;->invoke(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
