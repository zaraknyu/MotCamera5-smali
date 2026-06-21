.class public final Landroidx/dynamicanimation/animation/AnimationHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final sAnimatorHandler:Ljava/lang/ThreadLocal;


# instance fields
.field public final mAnimationCallbacks:Ljava/util/ArrayList;

.field public final mCallbackDispatcher:Lcom/google/android/gms/tasks/zzad;

.field public final mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

.field public mListDirty:Z

.field public mProvider:Landroidx/core/view/MenuHostHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/dynamicanimation/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/SimpleArrayMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/gms/tasks/zzad;

    const/16 v2, 0xc

    invoke-direct {v0, v2, p0}, Lcom/google/android/gms/tasks/zzad;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mCallbackDispatcher:Lcom/google/android/gms/tasks/zzad;

    iput-boolean v1, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    return-void
.end method
