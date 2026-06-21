.class public final Lc/F;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lc/G;

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lc/G;

.field public d:I


# direct methods
.method public constructor <init>(Lc/G;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lc/F;->c:Lc/G;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lc/F;->b:Ljava/lang/Object;

    iget p1, p0, Lc/F;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lc/F;->d:I

    iget-object p1, p0, Lc/F;->c:Lc/G;

    invoke-virtual {p1, p0}, Lc/G;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
