.class public final Landroidx/compose/ui/draw/PainterNode$measure$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $placeable:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/layout/Placeable;I)V
    .locals 0

    iput p2, p0, Landroidx/compose/ui/draw/PainterNode$measure$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/ui/draw/PainterNode$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/compose/ui/draw/PainterNode$measure$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    const-string v0, "$this$layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/draw/PainterNode$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object p0, p0, Landroidx/compose/ui/draw/PainterNode$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelativeWithLayer$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object p0, p0, Landroidx/compose/ui/draw/PainterNode$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object p0, p0, Landroidx/compose/ui/draw/PainterNode$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object p0, p0, Landroidx/compose/ui/draw/PainterNode$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object p0, p0, Landroidx/compose/ui/draw/PainterNode$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object p0, p0, Landroidx/compose/ui/draw/PainterNode$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object p0, p0, Landroidx/compose/ui/draw/PainterNode$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_7
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object p0, p0, Landroidx/compose/ui/draw/PainterNode$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_8
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object p0, p0, Landroidx/compose/ui/draw/PainterNode$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_9
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object p0, p0, Landroidx/compose/ui/draw/PainterNode$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_a
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object p0, p0, Landroidx/compose/ui/draw/PainterNode$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_b
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object p0, p0, Landroidx/compose/ui/draw/PainterNode$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_c
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object p0, p0, Landroidx/compose/ui/draw/PainterNode$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
