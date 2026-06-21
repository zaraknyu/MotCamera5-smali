.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$PrivateToThis;
.super Landroidx/appcompat/view/ActionMode;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$PrivateToThis;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$PrivateToThis;

    const-string/jumbo v1, "private_to_this"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/ActionMode;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$PrivateToThis;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$PrivateToThis;

    return-void
.end method


# virtual methods
.method public final getInternalDisplayName()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "private/*private to this*/"

    return-object p0
.end method
