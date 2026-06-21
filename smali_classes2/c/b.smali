.class public final Lc/b;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/Iterator;

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lc/e;

.field public d:I


# direct methods
.method public constructor <init>(Lc/e;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lc/b;->c:Lc/e;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lc/b;->b:Ljava/lang/Object;

    iget p1, p0, Lc/b;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lc/b;->d:I

    iget-object p1, p0, Lc/b;->c:Lc/e;

    invoke-virtual {p1, p0}, Lc/e;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
