.class public final Landroidx/compose/ui/layout/OuterPlacementScope;
.super Landroidx/compose/ui/layout/Placeable$PlacementScope;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final owner:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/layout/OuterPlacementScope;->$r8$classId:I

    iput-object p2, p0, Landroidx/compose/ui/layout/OuterPlacementScope;->owner:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getParentLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    iget v0, p0, Landroidx/compose/ui/layout/OuterPlacementScope;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/compose/ui/layout/OuterPlacementScope;->owner:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Landroidx/compose/ui/layout/OuterPlacementScope;->owner:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getParentWidth()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/layout/OuterPlacementScope;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/compose/ui/layout/OuterPlacementScope;->owner:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getMeasuredWidth()I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Landroidx/compose/ui/layout/OuterPlacementScope;->owner:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iget p0, p0, Landroidx/compose/ui/layout/Placeable;->width:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
