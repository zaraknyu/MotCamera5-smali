.class public final Landroidx/compose/animation/core/TransitionKt$SeekableStateObserver$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Landroidx/compose/animation/core/TransitionKt$SeekableStateObserver$2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/animation/core/TransitionKt$SeekableStateObserver$2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    sput-object v0, Landroidx/compose/animation/core/TransitionKt$SeekableStateObserver$2;->INSTANCE:Landroidx/compose/animation/core/TransitionKt$SeekableStateObserver$2;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    new-instance p0, Landroidx/preference/PreferenceManager;

    sget-object v0, Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;->INSTANCE$1:Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;

    invoke-direct {p0, v0}, Landroidx/preference/PreferenceManager;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceManager;->start()V

    return-object p0
.end method
