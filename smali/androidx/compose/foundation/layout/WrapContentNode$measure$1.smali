.class public final Landroidx/compose/foundation/layout/WrapContentNode$measure$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $placeable:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic $this_measure:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

.field public final synthetic $wrapperHeight:I

.field public final synthetic $wrapperWidth:I

.field public final synthetic this$0:Landroidx/compose/foundation/layout/WrapContentNode;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/WrapContentNode;ILandroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/node/LookaheadCapablePlaceable;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/layout/WrapContentNode$measure$1;->this$0:Landroidx/compose/foundation/layout/WrapContentNode;

    iput p2, p0, Landroidx/compose/foundation/layout/WrapContentNode$measure$1;->$wrapperWidth:I

    iput-object p3, p0, Landroidx/compose/foundation/layout/WrapContentNode$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    iput p4, p0, Landroidx/compose/foundation/layout/WrapContentNode$measure$1;->$wrapperHeight:I

    iput-object p5, p0, Landroidx/compose/foundation/layout/WrapContentNode$measure$1;->$this_measure:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Landroidx/compose/foundation/layout/WrapContentNode$measure$1;->this$0:Landroidx/compose/foundation/layout/WrapContentNode;

    iget-object v0, v0, Landroidx/compose/foundation/layout/WrapContentNode;->alignmentCallback:Lkotlin/jvm/internal/Lambda;

    iget-object v1, p0, Landroidx/compose/foundation/layout/WrapContentNode$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    iget v2, v1, Landroidx/compose/ui/layout/Placeable;->width:I

    iget v3, p0, Landroidx/compose/foundation/layout/WrapContentNode$measure$1;->$wrapperWidth:I

    sub-int/2addr v3, v2

    iget v2, p0, Landroidx/compose/foundation/layout/WrapContentNode$measure$1;->$wrapperHeight:I

    iget v4, v1, Landroidx/compose/ui/layout/Placeable;->height:I

    sub-int/2addr v2, v4

    int-to-long v3, v3

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    int-to-long v5, v2

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    or-long v2, v3, v5

    new-instance v4, Landroidx/compose/ui/unit/IntSize;

    invoke-direct {v4, v2, v3}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    iget-object p0, p0, Landroidx/compose/foundation/layout/WrapContentNode$measure$1;->$this_measure:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object p0

    invoke-interface {v0, v4, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/unit/IntOffset;

    iget-wide v2, p0, Landroidx/compose/ui/unit/IntOffset;->packedValue:J

    invoke-static {p1, v1, v2, v3}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place-70tqf50$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
