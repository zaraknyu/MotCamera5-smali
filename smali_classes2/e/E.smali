.class public final Le/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


# instance fields
.field public final synthetic a:Le/D;

.field public final synthetic b:Landroidx/compose/runtime/MutableState;

.field public final synthetic c:J

.field public final synthetic d:J


# direct methods
.method public constructor <init>(Le/D;Landroidx/compose/runtime/MutableState;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/E;->a:Le/D;

    iput-object p2, p0, Le/E;->b:Landroidx/compose/runtime/MutableState;

    iput-wide p3, p0, Le/E;->c:J

    iput-wide p5, p0, Le/E;->d:J

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    new-instance v0, Le/E$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    iget-object v3, p0, Le/E;->b:Landroidx/compose/runtime/MutableState;

    invoke-direct {v0, v3, v1}, Le/E$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/MutableState;I)V

    new-instance v2, Le/E$$ExternalSyntheticLambda1;

    iget-wide v4, p0, Le/E;->c:J

    iget-wide v6, p0, Le/E;->d:J

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Le/E$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/MutableState;JJLandroidx/compose/ui/input/pointer/PointerInputScope;)V

    iget-object p0, p0, Le/E;->a:Le/D;

    invoke-virtual {p0, v8, v0, v2, p2}, Le/D;->a(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
