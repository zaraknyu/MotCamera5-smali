.class public abstract Landroidx/compose/ui/layout/BeyondBoundsLayoutKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ModifierLocalBeyondBoundsLayout:Landroidx/compose/ui/modifier/ProvidableModifierLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/compose/ui/layout/PinnableContainerKt$LocalPinnableContainer$1;->INSTANCE$1:Landroidx/compose/ui/layout/PinnableContainerKt$LocalPinnableContainer$1;

    new-instance v1, Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    invoke-direct {v1, v0}, Landroidx/compose/ui/modifier/ProvidableModifierLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Landroidx/compose/ui/layout/BeyondBoundsLayoutKt;->ModifierLocalBeyondBoundsLayout:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    return-void
.end method
