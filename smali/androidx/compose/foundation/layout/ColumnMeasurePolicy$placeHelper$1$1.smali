.class public final Landroidx/compose/foundation/layout/ColumnMeasurePolicy$placeHelper$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $crossAxisLayoutSize:I

.field public final synthetic $mainAxisPositions:Ljava/io/Serializable;

.field public final synthetic $measureScope:Ljava/lang/Object;

.field public final synthetic $placeables:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/focus/FocusTransactionManager;Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;Ljava/lang/Object;ILandroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;I)V
    .locals 0

    .line 1
    iput p7, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy$placeHelper$1$1;->$r8$classId:I

    iput-object p2, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy$placeHelper$1$1;->$placeables:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy$placeHelper$1$1;->this$0:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy$placeHelper$1$1;->$measureScope:Ljava/lang/Object;

    iput p5, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy$placeHelper$1$1;->$crossAxisLayoutSize:I

    iput-object p6, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy$placeHelper$1$1;->$mainAxisPositions:Ljava/io/Serializable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public constructor <init>([Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/ColumnMeasurePolicy;ILandroidx/compose/ui/layout/MeasureScope;[I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy$placeHelper$1$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy$placeHelper$1$1;->$placeables:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy$placeHelper$1$1;->this$0:Ljava/lang/Object;

    iput p3, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy$placeHelper$1$1;->$crossAxisLayoutSize:I

    iput-object p4, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy$placeHelper$1$1;->$measureScope:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy$placeHelper$1$1;->$mainAxisPositions:Ljava/io/Serializable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget v0, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy$placeHelper$1$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/compose/ui/layout/BeyondBoundsLayout$BeyondBoundsScope;

    iget-object v0, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy$placeHelper$1$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/focus/FocusTargetNode;

    iget-object v1, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy$placeHelper$1$1;->$placeables:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/focus/FocusOwnerImpl;

    iget-object v2, v2, Landroidx/compose/ui/focus/FocusOwnerImpl;->activeFocusTargetNode:Landroidx/compose/ui/focus/FocusTargetNode;

    if-eq v1, v2, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy$placeHelper$1$1;->$measureScope:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/geometry/Rect;

    iget-object v2, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy$placeHelper$1$1;->$mainAxisPositions:Ljava/io/Serializable;

    check-cast v2, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;

    iget p0, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy$placeHelper$1$1;->$crossAxisLayoutSize:I

    invoke-static {p0, v2, v0, v1}, Landroidx/compose/ui/focus/FocusTraversalKt;->searchChildren-4C6V_qg(ILandroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/geometry/Rect;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-nez p0, :cond_2

    invoke-interface {p1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$BeyondBoundsScope;->getHasMoreContent()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move-object p0, v0

    :goto_1
    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/ui/layout/BeyondBoundsLayout$BeyondBoundsScope;

    iget-object v0, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy$placeHelper$1$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/focus/FocusTargetNode;

    iget-object v1, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy$placeHelper$1$1;->$placeables:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/focus/FocusOwnerImpl;

    iget-object v2, v2, Landroidx/compose/ui/focus/FocusOwnerImpl;->activeFocusTargetNode:Landroidx/compose/ui/focus/FocusTargetNode;

    if-eq v1, v2, :cond_3

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    iget-object v1, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy$placeHelper$1$1;->$measureScope:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/focus/FocusTargetNode;

    iget-object v2, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy$placeHelper$1$1;->$mainAxisPositions:Ljava/io/Serializable;

    check-cast v2, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;

    iget p0, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy$placeHelper$1$1;->$crossAxisLayoutSize:I

    invoke-static {v0, v1, p0, v2}, Landroidx/compose/ui/focus/FocusTraversalKt;->searchChildren-4C6V_qg(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;ILandroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-nez p0, :cond_5

    invoke-interface {p1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$BeyondBoundsScope;->getHasMoreContent()Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    move-object p0, v0

    :goto_3
    return-object p0

    :pswitch_1
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy$placeHelper$1$1;->$placeables:Ljava/lang/Object;

    check-cast v0, [Landroidx/compose/ui/layout/Placeable;

    iget-object v1, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy$placeHelper$1$1;->this$0:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    iget-object v2, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy$placeHelper$1$1;->$measureScope:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/layout/MeasureScope;

    iget-object v3, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy$placeHelper$1$1;->$mainAxisPositions:Ljava/io/Serializable;

    check-cast v3, [I

    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_4
    if-ge v6, v4, :cond_9

    aget-object v8, v0, v6

    add-int/lit8 v9, v7, 0x1

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getParentData()Ljava/lang/Object;

    move-result-object v10

    instance-of v11, v10, Landroidx/compose/foundation/layout/RowColumnParentData;

    const/4 v12, 0x0

    if-eqz v11, :cond_6

    check-cast v10, Landroidx/compose/foundation/layout/RowColumnParentData;

    goto :goto_5

    :cond_6
    move-object v10, v12

    :goto_5
    invoke-interface {v2}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v11

    if-eqz v10, :cond_7

    iget-object v12, v10, Landroidx/compose/foundation/layout/RowColumnParentData;->crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment$HorizontalCrossAxisAlignment;

    :cond_7
    iget v10, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy$placeHelper$1$1;->$crossAxisLayoutSize:I

    if-eqz v12, :cond_8

    iget v13, v8, Landroidx/compose/ui/layout/Placeable;->width:I

    sub-int/2addr v10, v13

    invoke-virtual {v12, v10, v11}, Landroidx/compose/foundation/layout/CrossAxisAlignment$HorizontalCrossAxisAlignment;->align$foundation_layout_release(ILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result v10

    goto :goto_6

    :cond_8
    iget-object v12, v1, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;->horizontalAlignment:Landroidx/compose/ui/BiasAlignment$Horizontal;

    iget v13, v8, Landroidx/compose/ui/layout/Placeable;->width:I

    sub-int/2addr v10, v13

    invoke-virtual {v12, v5, v10, v11}, Landroidx/compose/ui/BiasAlignment$Horizontal;->align(IILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result v10

    :goto_6
    aget v7, v3, v7

    invoke-static {p1, v8, v10, v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    add-int/lit8 v6, v6, 0x1

    move v7, v9

    goto :goto_4

    :cond_9
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
