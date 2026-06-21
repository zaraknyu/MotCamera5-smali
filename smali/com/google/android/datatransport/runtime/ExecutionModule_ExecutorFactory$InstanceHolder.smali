.class public abstract Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/transition/Transition$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/transition/Transition$1;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroidx/transition/Transition$1;-><init>(I)V

    sput-object v0, Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory$InstanceHolder;->INSTANCE:Landroidx/transition/Transition$1;

    return-void
.end method
