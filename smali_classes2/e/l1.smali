.class public final Le/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/l1;->a:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Landroidx/compose/ui/graphics/Color;

    iget-wide v0, p1, Landroidx/compose/ui/graphics/Color;->value:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->getRed-impl(J)F

    move-result p1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr p1, v2

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->getGreen-impl(J)F

    move-result v4

    iget p0, p0, Le/l1;->a:F

    mul-float/2addr v4, p0

    invoke-static {v4, v2, v3}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p0

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->getBlue-impl(J)F

    move-result v4

    const/high16 v5, 0x3fa00000    # 1.25f

    mul-float/2addr v4, v5

    invoke-static {v4, v2, v3}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v2

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    move-result v0

    sget-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Srgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-static {p1, p0, v2, v0, v1}, Landroidx/compose/ui/graphics/Brush;->Color(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    move-result-wide p0

    new-instance v0, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    return-object v0
.end method
