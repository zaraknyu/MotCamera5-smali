.class public final Lkotlinx/coroutines/YieldContext;
.super Lkotlin/coroutines/AbstractCoroutineContextElement;
.source "SourceFile"


# static fields
.field public static final Key:Lkotlinx/coroutines/Job$Key;


# instance fields
.field public dispatcherWasUnconfined:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/Job$Key;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkotlinx/coroutines/YieldContext;->Key:Lkotlinx/coroutines/Job$Key;

    return-void
.end method
