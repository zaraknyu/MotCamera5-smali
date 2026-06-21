.class public final Landroidx/compose/foundation/pager/PagerState$targetPage$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/compose/foundation/pager/PagerState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/pager/PagerState;I)V
    .locals 0

    iput p2, p0, Landroidx/compose/foundation/pager/PagerState$targetPage$2;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState$targetPage$2;->this$0:Landroidx/compose/foundation/pager/PagerState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Landroidx/compose/foundation/pager/PagerState$targetPage$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState$targetPage$2;->this$0:Landroidx/compose/foundation/pager/PagerState;

    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->scrollableState:Lcom/motorola/camera/fsm/Fsm;

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/Fsm;->isScrollInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->settledPageState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState$targetPage$2;->this$0:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState$targetPage$2;->this$0:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState$targetPage$2;->this$0:Landroidx/compose/foundation/pager/PagerState;

    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->programmaticScrollTargetPage$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    iget-object v1, p0, Landroidx/compose/foundation/pager/PagerState;->scrollableState:Lcom/motorola/camera/fsm/Fsm;

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/Fsm;->isScrollInProgress()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Landroidx/profileinstaller/DeviceProfileWriter;

    iget-object v0, v0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Landroidx/compose/foundation/pager/PagerState;->density:Landroidx/compose/ui/unit/Density;

    sget v2, Landroidx/compose/foundation/pager/PagerStateKt;->DefaultPositionThreshold:F

    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getPageSize$foundation_release()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getPageSize$foundation_release()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4

    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->isLastScrollForwardState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Landroidx/compose/foundation/pager/PagerState;->firstVisiblePage:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget v0, p0, Landroidx/compose/foundation/pager/PagerState;->firstVisiblePage:I

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    move-result v0

    :goto_1
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/pager/PagerState;->coerceInPageRange(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
