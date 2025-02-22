// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.PowerShell.Cmdlets.ElasticSan.Models.Api20221201Preview
{
    using static Microsoft.Azure.PowerShell.Cmdlets.ElasticSan.Runtime.Extensions;

    /// <summary>Elastic San update properties.</summary>
    [Microsoft.Azure.PowerShell.Cmdlets.ElasticSan.DoNotFormat]
    public partial class ElasticSanUpdateProperties :
        Microsoft.Azure.PowerShell.Cmdlets.ElasticSan.Models.Api20221201Preview.IElasticSanUpdateProperties,
        Microsoft.Azure.PowerShell.Cmdlets.ElasticSan.Models.Api20221201Preview.IElasticSanUpdatePropertiesInternal
    {

        /// <summary>Backing field for <see cref="BaseSizeTiB" /> property.</summary>
        private long? _baseSizeTiB;

        /// <summary>Base size of the Elastic San appliance in TiB.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.ElasticSan.Origin(Microsoft.Azure.PowerShell.Cmdlets.ElasticSan.PropertyOrigin.Owned)]
        public long? BaseSizeTiB { get => this._baseSizeTiB; set => this._baseSizeTiB = value; }

        /// <summary>Backing field for <see cref="ExtendedCapacitySizeTiB" /> property.</summary>
        private long? _extendedCapacitySizeTiB;

        /// <summary>Extended size of the Elastic San appliance in TiB.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.ElasticSan.Origin(Microsoft.Azure.PowerShell.Cmdlets.ElasticSan.PropertyOrigin.Owned)]
        public long? ExtendedCapacitySizeTiB { get => this._extendedCapacitySizeTiB; set => this._extendedCapacitySizeTiB = value; }

        /// <summary>Creates an new <see cref="ElasticSanUpdateProperties" /> instance.</summary>
        public ElasticSanUpdateProperties()
        {

        }
    }
    /// Elastic San update properties.
    public partial interface IElasticSanUpdateProperties :
        Microsoft.Azure.PowerShell.Cmdlets.ElasticSan.Runtime.IJsonSerializable
    {
        /// <summary>Base size of the Elastic San appliance in TiB.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.ElasticSan.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"Base size of the Elastic San appliance in TiB.",
        SerializedName = @"baseSizeTiB",
        PossibleTypes = new [] { typeof(long) })]
        long? BaseSizeTiB { get; set; }
        /// <summary>Extended size of the Elastic San appliance in TiB.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.ElasticSan.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"Extended size of the Elastic San appliance in TiB.",
        SerializedName = @"extendedCapacitySizeTiB",
        PossibleTypes = new [] { typeof(long) })]
        long? ExtendedCapacitySizeTiB { get; set; }

    }
    /// Elastic San update properties.
    internal partial interface IElasticSanUpdatePropertiesInternal

    {
        /// <summary>Base size of the Elastic San appliance in TiB.</summary>
        long? BaseSizeTiB { get; set; }
        /// <summary>Extended size of the Elastic San appliance in TiB.</summary>
        long? ExtendedCapacitySizeTiB { get; set; }

    }
}