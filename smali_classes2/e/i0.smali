.class public final Le/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


# instance fields
.field public final synthetic a:Landroidx/compose/runtime/State;

.field public final synthetic b:Lc/v1;

.field public final synthetic c:Lc/X;

.field public final synthetic d:Landroidx/compose/runtime/State;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/State;Lc/v1;Lc/X;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/i0;->a:Landroidx/compose/runtime/State;

    iput-object p2, p0, Le/i0;->b:Lc/v1;

    iput-object p3, p0, Le/i0;->c:Lc/X;

    iput-object p4, p0, Le/i0;->d:Landroidx/compose/runtime/State;

    iput-object p5, p0, Le/i0;->e:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Le/i0;->a:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/i0;->b:Lc/v1;

    iget-object v0, v0, Lc/v1;->c:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Le/i0$$ExternalSyntheticLambda0;

    iget-object v3, p0, Le/i0;->b:Lc/v1;

    iget-object v4, p0, Le/i0;->c:Lc/X;

    iget-object v6, p0, Le/i0;->d:Landroidx/compose/runtime/State;

    iget-object v7, p0, Le/i0;->e:Lkotlin/jvm/functions/Function1;

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Le/i0$$ExternalSyntheticLambda0;-><init>(Lc/v1;Lc/X;Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function1;)V

    const/4 p0, 0x0

    const/4 p1, 0x7

    invoke-static {v5, p0, v2, p2, p1}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->detectTapGestures$default(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
