.class public final Lf/r;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lf/u;

.field public b:Lkotlin/jvm/functions/Function1;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lf/u;

.field public e:I


# direct methods
.method public constructor <init>(Lf/u;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lf/r;->d:Lf/u;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lf/r;->c:Ljava/lang/Object;

    iget p1, p0, Lf/r;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lf/r;->e:I

    iget-object p1, p0, Lf/r;->d:Lf/u;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lf/u;->a(Lf/B;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
