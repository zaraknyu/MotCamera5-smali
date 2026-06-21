.class public abstract Landroidx/compose/ui/text/intl/PlatformLocaleKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final platformLocaleDelegate:Landroidx/core/view/MenuHostHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/core/view/MenuHostHelper;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroidx/core/view/MenuHostHelper;-><init>(I)V

    sput-object v0, Landroidx/compose/ui/text/intl/PlatformLocaleKt;->platformLocaleDelegate:Landroidx/core/view/MenuHostHelper;

    return-void
.end method
