.class public final Lh/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lh/k;

.field public static final b:Lkotlin/SynchronizedLazyImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lh/k;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lh/k;->a:Lh/k;

    new-instance v0, Lb/o$$ExternalSyntheticLambda0;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lb/o$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v0

    sput-object v0, Lh/k;->b:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method
