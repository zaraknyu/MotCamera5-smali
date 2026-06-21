.class public final Lkotlinx/coroutines/flow/SharingStarted$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Eagerly:Lkotlinx/coroutines/flow/StartedLazily;

.field public static final Lazily:Lkotlinx/coroutines/flow/StartedLazily;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/flow/StartedLazily;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlinx/coroutines/flow/StartedLazily;-><init>(I)V

    sput-object v0, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedLazily;

    new-instance v0, Lkotlinx/coroutines/flow/StartedLazily;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/flow/StartedLazily;-><init>(I)V

    sput-object v0, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Lazily:Lkotlinx/coroutines/flow/StartedLazily;

    return-void
.end method
