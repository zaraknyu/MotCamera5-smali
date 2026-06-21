.class public final Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/GuardedTransitionRunnable;


# static fields
.field public static final CAPTURE_KEYS:[I

.field public static mIgnoreDownTime:J = -0x1L


# instance fields
.field public final mKeyCodes:Ljava/util/List;

.field public final mKeyCondition:I

.field public final mKeyFunction:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;->CAPTURE_KEYS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x17
        0x42
        0x4f
        0x19
        0x18
        0x1b
        0x55
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;->CAPTURE_KEYS:[I

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>(II[I)V

    return-void
.end method

.method public constructor <init>(II[I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p3}, Lcom/google/common/primitives/Ints;->asList([I)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;->mKeyCodes:Ljava/util/List;

    .line 5
    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;->mKeyCondition:I

    .line 6
    iput p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;->mKeyFunction:I

    return-void
.end method

.method public constructor <init>([II)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p2, v0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>(II[I)V

    return-void
.end method


# virtual methods
.method public final canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z
    .locals 7

    move-object p1, p2

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-string v0, "KEY_EVENT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "KeyEvent is missing from an Event.KEY Trigger with data="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyGuardRunnable"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;->mKeyCodes:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    iget p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;->mKeyFunction:I

    const/4 v2, 0x1

    if-ne p2, v2, :cond_3

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    move v4, v1

    :goto_1
    const/4 v5, 0x7

    if-ge v4, v5, :cond_3

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;->CAPTURE_KEYS:[I

    aget v5, v5, v4

    if-ne v5, v3, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCaptureAllowed()Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_7

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_4

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    sget-wide v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;->mIgnoreDownTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    sget-object v3, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v4, Lcom/motorola/camera/AppFeatures$Feature;->PRESS_KEY_SWITCH_MODE:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v3, v3, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v3, Ljava/util/EnumSet;

    invoke-virtual {v3, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_7

    :cond_4
    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;->mKeyCondition:I

    invoke-static {p0}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p0

    if-eqz p0, :cond_d

    const-string v3, "TIMER"

    if-eq p0, v2, :cond_c

    const/4 v4, 0x2

    if-eq p0, v4, :cond_b

    const/4 p1, 0x3

    if-eq p0, p1, :cond_6

    const/4 p1, 0x4

    if-eq p0, p1, :cond_5

    goto/16 :goto_7

    :cond_5
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-ne p0, v2, :cond_f

    goto/16 :goto_6

    :cond_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSpotColorMode()Z

    move-result p1

    const/4 v3, 0x6

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v3

    if-nez v3, :cond_8

    const/16 v3, 0x10

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_2

    :cond_7
    move v3, v1

    goto :goto_3

    :cond_8
    :goto_2
    move v3, v2

    :goto_3
    sget-object v5, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->PRESS_KEY_SWITCH_MODE:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v5, v5, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v5, Ljava/util/EnumSet;

    invoke-virtual {v5, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    if-ne p2, v4, :cond_9

    move v4, v2

    goto :goto_4

    :cond_9
    move v4, v1

    :goto_4
    if-nez v3, :cond_a

    if-nez p1, :cond_a

    if-nez p0, :cond_a

    if-ne p2, v2, :cond_a

    move p0, v2

    goto :goto_5

    :cond_a
    move p0, v1

    :goto_5
    invoke-virtual {v0}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result p1

    if-eqz p1, :cond_f

    if-nez v4, :cond_e

    if-eqz p0, :cond_f

    goto :goto_6

    :cond_b
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-ne p0, v2, :cond_f

    invoke-virtual {p1, v3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_6

    :cond_c
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-ne p0, v2, :cond_f

    invoke-virtual {p1, v3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_f

    goto :goto_6

    :cond_d
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_f

    :cond_e
    :goto_6
    return v2

    :cond_f
    :goto_7
    return v1
.end method
