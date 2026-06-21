.class public final Landroidx/compose/animation/core/MutatorMutex$Mutator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final job:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/Job;)V
    .locals 1

    sget-object v0, Landroidx/compose/animation/core/MutatePriority;->Default:Landroidx/compose/animation/core/MutatePriority;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/core/MutatorMutex$Mutator;->job:Lkotlinx/coroutines/Job;

    return-void
.end method
