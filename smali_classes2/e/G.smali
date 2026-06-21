.class public final Le/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


# instance fields
.field public final synthetic a:Le/D;

.field public final synthetic b:Landroidx/compose/runtime/MutableState;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Le/D;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/G;->a:Le/D;

    iput-object p2, p0, Le/G;->b:Landroidx/compose/runtime/MutableState;

    iput p3, p0, Le/G;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Le/E$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    iget-object v2, p0, Le/G;->b:Landroidx/compose/runtime/MutableState;

    invoke-direct {v0, v2, v1}, Le/E$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/MutableState;I)V

    new-instance v1, La/s$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    iget v3, p0, Le/G;->c:I

    invoke-direct {v1, v3, v2}, La/s$$ExternalSyntheticLambda0;-><init>(II)V

    iget-object p0, p0, Le/G;->a:Le/D;

    invoke-virtual {p0, p1, v0, v1, p2}, Le/D;->a(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
