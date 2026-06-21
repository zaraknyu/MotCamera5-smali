.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageViewDescriptorFactory$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $$INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageViewDescriptorFactory$Companion;

.field public static final CAPABILITY:Lcom/google/common/base/Joiner;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageViewDescriptorFactory$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageViewDescriptorFactory$Companion;->$$INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageViewDescriptorFactory$Companion;

    new-instance v0, Lcom/google/common/base/Joiner;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const-string v3, "PackageViewDescriptorFactory"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/base/Joiner;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageViewDescriptorFactory$Companion;->CAPABILITY:Lcom/google/common/base/Joiner;

    return-void
.end method
