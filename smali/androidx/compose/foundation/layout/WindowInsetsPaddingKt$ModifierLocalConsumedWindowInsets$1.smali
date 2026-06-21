.class public final Landroidx/compose/foundation/layout/WindowInsetsPaddingKt$ModifierLocalConsumedWindowInsets$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/layout/WindowInsetsPaddingKt$ModifierLocalConsumedWindowInsets$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt$ModifierLocalConsumedWindowInsets$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    sput-object v0, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt$ModifierLocalConsumedWindowInsets$1;->INSTANCE:Landroidx/compose/foundation/layout/WindowInsetsPaddingKt$ModifierLocalConsumedWindowInsets$1;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    new-instance p0, Landroidx/compose/foundation/layout/FixedIntInsets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0
.end method
