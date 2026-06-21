.class public final Landroidx/compose/foundation/layout/InsetsPaddingModifier$measure$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $left:I

.field public final synthetic $placeable:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic $r8$classId:I

.field public final synthetic $top:I


# direct methods
.method public constructor <init>(ILandroidx/compose/ui/layout/Placeable;I)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier$measure$1;->$r8$classId:I

    .line 1
    iput p1, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier$measure$1;->$left:I

    iput-object p2, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    iput p3, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier$measure$1;->$top:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/layout/Placeable;III)V
    .locals 0

    .line 2
    iput p4, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier$measure$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    iput p2, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier$measure$1;->$left:I

    iput p3, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier$measure$1;->$top:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier$measure$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    iget v1, v0, Landroidx/compose/ui/layout/Placeable;->width:I

    iget v2, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier$measure$1;->$left:I

    sub-int/2addr v2, v1

    int-to-float v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    iget p0, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier$measure$1;->$top:I

    iget v3, v0, Landroidx/compose/ui/layout/Placeable;->height:I

    sub-int/2addr p0, v3

    int-to-float p0, p0

    div-float/2addr p0, v2

    invoke-static {p0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p0

    invoke-static {p1, v0, v1, p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget v0, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier$measure$1;->$left:I

    iget v1, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier$measure$1;->$top:I

    iget-object p0, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    invoke-static {p1, p0, v0, v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget v0, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier$measure$1;->$left:I

    iget v1, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier$measure$1;->$top:I

    iget-object p0, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifier$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    invoke-static {p1, p0, v0, v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
