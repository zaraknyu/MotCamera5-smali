.class public final Le/x1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


# instance fields
.field public final synthetic a:Landroidx/compose/runtime/MutableState;

.field public final synthetic b:Le/n1;

.field public final synthetic c:Le/o1;

.field public final synthetic d:Le/n0;

.field public final synthetic e:Landroidx/compose/runtime/MutableState;

.field public final synthetic f:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

.field public final synthetic g:Landroidx/compose/runtime/MutableState;

.field public final synthetic h:Landroidx/compose/runtime/MutableState;

.field public final synthetic i:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;Le/n1;Le/o1;Le/n0;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/x1;->a:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Le/x1;->b:Le/n1;

    iput-object p3, p0, Le/x1;->c:Le/o1;

    iput-object p4, p0, Le/x1;->d:Le/n0;

    iput-object p5, p0, Le/x1;->e:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Le/x1;->f:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    iput-object p7, p0, Le/x1;->g:Landroidx/compose/runtime/MutableState;

    iput-object p8, p0, Le/x1;->h:Landroidx/compose/runtime/MutableState;

    iput-object p9, p0, Le/x1;->i:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Le/x1;->a:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Le/w1;

    iget-object v9, p0, Le/x1;->i:Landroidx/compose/runtime/MutableState;

    const/4 v10, 0x0

    iget-object v2, p0, Le/x1;->b:Le/n1;

    iget-object v3, p0, Le/x1;->c:Le/o1;

    iget-object v4, p0, Le/x1;->d:Le/n0;

    iget-object v5, p0, Le/x1;->e:Landroidx/compose/runtime/MutableState;

    iget-object v6, p0, Le/x1;->f:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    iget-object v7, p0, Le/x1;->g:Landroidx/compose/runtime/MutableState;

    iget-object v8, p0, Le/x1;->h:Landroidx/compose/runtime/MutableState;

    invoke-direct/range {v1 .. v10}, Le/w1;-><init>(Le/n1;Le/o1;Le/n0;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v1, p2}, Landroidx/compose/foundation/gestures/ScrollableKt;->awaitEachGesture(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
