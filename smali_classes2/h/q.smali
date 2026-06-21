.class public final Lh/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lkotlin/SynchronizedLazyImpl;

.field public final c:Lkotlin/SynchronizedLazyImpl;

.field public d:Lcom/adobe/scan/sdk/ScanSession$ResumableState$Callbacks;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/q;->a:Ljava/lang/String;

    new-instance p1, Lh/q$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lh/q$$ExternalSyntheticLambda0;-><init>(Lh/q;I)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lh/q;->b:Lkotlin/SynchronizedLazyImpl;

    new-instance p1, Lh/q$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lh/q$$ExternalSyntheticLambda0;-><init>(Lh/q;I)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lh/q;->c:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method
