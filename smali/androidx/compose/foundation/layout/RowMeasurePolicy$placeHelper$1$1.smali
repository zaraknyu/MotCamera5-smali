.class public final Landroidx/compose/foundation/layout/RowMeasurePolicy$placeHelper$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $crossAxisLayoutSize:I

.field public final synthetic $mainAxisPositions:Ljava/lang/Object;

.field public final synthetic $placeables:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/DerivedSnapshotState;Landroidx/compose/runtime/internal/IntRef;Landroidx/collection/MutableObjectIntMap;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/compose/foundation/layout/RowMeasurePolicy$placeHelper$1$1;->$r8$classId:I

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/layout/RowMeasurePolicy$placeHelper$1$1;->$placeables:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/foundation/layout/RowMeasurePolicy$placeHelper$1$1;->this$0:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/foundation/layout/RowMeasurePolicy$placeHelper$1$1;->$mainAxisPositions:Ljava/lang/Object;

    iput p4, p0, Landroidx/compose/foundation/layout/RowMeasurePolicy$placeHelper$1$1;->$crossAxisLayoutSize:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public constructor <init>([Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/RowMeasurePolicy;I[I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/foundation/layout/RowMeasurePolicy$placeHelper$1$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Landroidx/compose/foundation/layout/RowMeasurePolicy$placeHelper$1$1;->$placeables:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/foundation/layout/RowMeasurePolicy$placeHelper$1$1;->this$0:Ljava/lang/Object;

    iput p3, p0, Landroidx/compose/foundation/layout/RowMeasurePolicy$placeHelper$1$1;->$crossAxisLayoutSize:I

    iput-object p4, p0, Landroidx/compose/foundation/layout/RowMeasurePolicy$placeHelper$1$1;->$mainAxisPositions:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget v0, p0, Landroidx/compose/foundation/layout/RowMeasurePolicy$placeHelper$1$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/compose/foundation/layout/RowMeasurePolicy$placeHelper$1$1;->$placeables:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/DerivedSnapshotState;

    if-eq p1, v0, :cond_2

    instance-of v0, p1, Landroidx/compose/runtime/snapshots/StateObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/layout/RowMeasurePolicy$placeHelper$1$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/internal/IntRef;

    iget v0, v0, Landroidx/compose/runtime/internal/IntRef;->element:I

    iget-object v1, p0, Landroidx/compose/foundation/layout/RowMeasurePolicy$placeHelper$1$1;->$mainAxisPositions:Ljava/lang/Object;

    check-cast v1, Landroidx/collection/MutableObjectIntMap;

    iget p0, p0, Landroidx/compose/foundation/layout/RowMeasurePolicy$placeHelper$1$1;->$crossAxisLayoutSize:I

    sub-int/2addr v0, p0

    invoke-virtual {v1, p1}, Landroidx/collection/MutableObjectIntMap;->findKeyIndex(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    iget-object v2, v1, Landroidx/collection/MutableObjectIntMap;->values:[I

    aget p0, v2, p0

    goto :goto_0

    :cond_0
    const p0, 0x7fffffff

    :goto_0
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {v1, p0, p1}, Landroidx/collection/MutableObjectIntMap;->set(ILjava/lang/Object;)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "A derived state calculation cannot read itself"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Landroidx/compose/foundation/layout/RowMeasurePolicy$placeHelper$1$1;->$placeables:Ljava/lang/Object;

    check-cast v0, [Landroidx/compose/ui/layout/Placeable;

    iget-object v1, p0, Landroidx/compose/foundation/layout/RowMeasurePolicy$placeHelper$1$1;->this$0:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/foundation/layout/RowMeasurePolicy;

    iget-object v2, p0, Landroidx/compose/foundation/layout/RowMeasurePolicy$placeHelper$1$1;->$mainAxisPositions:Ljava/lang/Object;

    check-cast v2, [I

    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_1
    if-ge v5, v3, :cond_6

    aget-object v7, v0, v5

    add-int/lit8 v8, v6, 0x1

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroidx/compose/ui/layout/Placeable;->getParentData()Ljava/lang/Object;

    move-result-object v9

    instance-of v10, v9, Landroidx/compose/foundation/layout/RowColumnParentData;

    const/4 v11, 0x0

    if-eqz v10, :cond_3

    check-cast v9, Landroidx/compose/foundation/layout/RowColumnParentData;

    goto :goto_2

    :cond_3
    move-object v9, v11

    :goto_2
    if-eqz v9, :cond_4

    iget-object v11, v9, Landroidx/compose/foundation/layout/RowColumnParentData;->crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment$HorizontalCrossAxisAlignment;

    :cond_4
    iget v9, p0, Landroidx/compose/foundation/layout/RowMeasurePolicy$placeHelper$1$1;->$crossAxisLayoutSize:I

    if-eqz v11, :cond_5

    iget v10, v7, Landroidx/compose/ui/layout/Placeable;->height:I

    sub-int/2addr v9, v10

    sget-object v10, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-virtual {v11, v9, v10}, Landroidx/compose/foundation/layout/CrossAxisAlignment$HorizontalCrossAxisAlignment;->align$foundation_layout_release(ILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result v9

    goto :goto_3

    :cond_5
    iget-object v10, v1, Landroidx/compose/foundation/layout/RowMeasurePolicy;->verticalAlignment:Landroidx/compose/ui/BiasAlignment$Vertical;

    iget v11, v7, Landroidx/compose/ui/layout/Placeable;->height:I

    sub-int/2addr v9, v11

    invoke-virtual {v10, v4, v9}, Landroidx/compose/ui/BiasAlignment$Vertical;->align(II)I

    move-result v9

    :goto_3
    aget v6, v2, v6

    invoke-static {p1, v7, v6, v9}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    add-int/lit8 v5, v5, 0x1

    move v6, v8

    goto :goto_1

    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
