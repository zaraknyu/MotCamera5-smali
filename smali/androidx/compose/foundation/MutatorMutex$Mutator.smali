.class public final Landroidx/compose/foundation/MutatorMutex$Mutator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final job:Lkotlinx/coroutines/Job;

.field public final priority:Landroidx/compose/foundation/MutatePriority;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/MutatePriority;Lkotlinx/coroutines/Job;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/MutatorMutex$Mutator;->priority:Landroidx/compose/foundation/MutatePriority;

    iput-object p2, p0, Landroidx/compose/foundation/MutatorMutex$Mutator;->job:Lkotlinx/coroutines/Job;

    return-void
.end method
